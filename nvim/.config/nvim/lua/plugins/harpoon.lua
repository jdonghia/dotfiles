return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>H',
        function()
          require('harpoon'):list():add()
        end,
        mode = 'n',
      },
      {
        '<C-e>',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        mode = 'n',
      },
      {
        '<leader>h',
        function()
          require('harpoon'):list():select(1)
        end,
        mode = 'n',
      },
      {
        '<leader>j',
        function()
          require('harpoon'):list():select(2)
        end,
        mode = 'n',
      },
      {
        '<leader>k',
        function()
          require('harpoon'):list():select(3)
        end,
        mode = 'n',
      },
      {
        '<leader>l',
        function()
          require('harpoon'):list():select(4)
        end,
        mode = 'n',
      },
    },
    config = function()
      require('harpoon').setup {}
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    config = function()
      local harpoon = require 'harpoon'

      local function get_harpoon_index(buf_name)
        local list = harpoon:list()
        for i = 1, list:length() do
          local item = list:get(i)
          if item and buf_name:find(item.value, 1, true) then
            return i
          end
        end
        return nil
      end

      local function has_harpooned_buffers()
        local list = harpoon:list()
        if list:length() == 0 then
          return false
        end

        -- Check if any harpooned files are actually loaded as buffers
        for i = 1, list:length() do
          local item = list:get(i)
          if item and item.value then
            local bufnr = vim.fn.bufnr(item.value)
            if bufnr ~= -1 and vim.api.nvim_buf_is_loaded(bufnr) then
              return true
            end
          end
        end
        return false
      end

      local function toggle_bufferline()
        if has_harpooned_buffers() then
          vim.opt.showtabline = 2
        else
          vim.opt.showtabline = 0
        end
      end

      require('bufferline').setup {
        options = {
          show_buffer_close_icons = false,
          show_close_icon = false,
          numbers = function(opts)
            local buf_name = vim.api.nvim_buf_get_name(opts.id)
            local index = get_harpoon_index(buf_name)
            if index then
              local keys = { 'h', 'j', 'k', 'l' }
              return keys[index] or tostring(index)
            end
            return ''
          end,
          custom_filter = function(buf_number)
            local buf_name = vim.api.nvim_buf_get_name(buf_number)
            return get_harpoon_index(buf_name) ~= nil
          end,
          sort_by = function(buffer_a, buffer_b)
            local a_name = vim.api.nvim_buf_get_name(buffer_a.id)
            local b_name = vim.api.nvim_buf_get_name(buffer_b.id)
            local a_index = get_harpoon_index(a_name)
            local b_index = get_harpoon_index(b_name)

            if a_index and b_index then
              return a_index < b_index
            end
            return false
          end,
        },
      }

      toggle_bufferline()

      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufDelete' }, {
        callback = function()
          vim.schedule(toggle_bufferline)
        end,
      })

      harpoon:extend {
        ADD = function(ctx)
          vim.schedule(function()
            -- Load the buffer if it's not already loaded
            if ctx.item and ctx.item.value then
              local bufnr = vim.fn.bufnr(ctx.item.value)
              if bufnr == -1 then
                vim.cmd('badd ' .. vim.fn.fnameescape(ctx.item.value))
              end
            end
            toggle_bufferline()
          end)
        end,
        REMOVE = function()
          vim.schedule(function()
            toggle_bufferline()
          end)
        end,
      }

      vim.api.nvim_create_autocmd('VimEnter', {
        callback = function()
          vim.schedule(function()
            local list = harpoon:list()
            if list:length() > 0 then
              for i = 1, list:length() do
                local item = list:get(i)
                if item and item.value then
                  -- Create buffer and load it
                  vim.cmd('badd ' .. vim.fn.fnameescape(item.value))
                  local bufnr = vim.fn.bufnr(item.value)
                  if bufnr ~= -1 then
                    vim.fn.bufload(bufnr)
                  end
                end
              end
              vim.opt.showtabline = 2
            end
          end)
        end,
      })
    end,
  },
}
