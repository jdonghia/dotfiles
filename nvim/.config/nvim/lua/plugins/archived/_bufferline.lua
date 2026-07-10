return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
      local harpoon = require("harpoon")

      -- Return the 1-based Harpoon index for a buffer name, or nil if not harpooned.
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

      -- Only show the tabline when there is at least one harpooned buffer.
      local function toggle_bufferline()
        if has_harpooned_buffers() then
          vim.opt.showtabline = 2
        else
          vim.opt.showtabline = 0
        end
      end

      require("bufferline").setup({
        options = {
          show_buffer_close_icons = false,
          show_close_icon = false,
          -- Only keep buffers that are present in the Harpoon list.
          custom_filter = function(buf_number)
            local buf_name = vim.api.nvim_buf_get_name(buf_number)
            return get_harpoon_index(buf_name) ~= nil
          end,
          -- Order the bufferline to match the Harpoon list order.
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
      })

      toggle_bufferline()

      vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "BufDelete" }, {
        callback = function()
          vim.schedule(toggle_bufferline)
        end,
      })

      -- React to Harpoon add/remove so the bufferline updates immediately.
      harpoon:extend({
        ADD = function(ctx)
          vim.schedule(function()
            if ctx.item and ctx.item.value then
              local bufnr = vim.fn.bufnr(ctx.item.value)
              if bufnr == -1 then
                vim.cmd("badd " .. vim.fn.fnameescape(ctx.item.value))
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
      })

      -- Make sure already-harpooned files have buffers loaded on startup.
      local function load_harpooned_buffers()
        local list = harpoon:list()
        if list:length() > 0 then
          for i = 1, list:length() do
            local item = list:get(i)
            if item and item.value then
              vim.cmd("badd " .. vim.fn.fnameescape(item.value))
              local bufnr = vim.fn.bufnr(item.value)
              if bufnr ~= -1 then
                vim.fn.bufload(bufnr)
              end
            end
          end
          vim.opt.showtabline = 2
        end
      end

      if vim.v.vim_did_enter == 1 then
        vim.schedule(load_harpooned_buffers)
      else
        vim.api.nvim_create_autocmd("VimEnter", {
          once = true,
          callback = function()
            vim.schedule(load_harpooned_buffers)
          end,
        })
      end
    end,
  },
}
