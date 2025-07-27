return {
  'epwalsh/obsidian.nvim',
  lazy = true,
  version = '*',
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { 'gt', '<cmd>ObsidianTag<CR>', silent = true },
    {
      'gf',
      function()
        return require('obsidian').util.gf_passthrough()
      end,
      mode = 'n',
      noremap = false,
      expr = true,
      buffer = true,
      silent = true,
    },
    {
      '<leader>ti',
      function()
        return require('obsidian').util.toggle_checkbox()
      end,
      mode = 'n',
      buffer = true,
      silent = true,
    },
    {
      '<leader>on',
      ':ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>',
      mode = 'n',
      silent = true,
    },
    {
      '<leader>of',
      ':s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>',
      mode = 'n',
      silent = true,
    },
    {
      '<leader>ok',
      ":!mv '%:p' $HOME/obsidian/zettelkasten<cr>:bd<cr>",
      mode = 'n',
      silent = true,
    },
    {
      '<leader>odd',
      ":!rm '%:p'<cr>:bd<cr>",
      mode = 'n',
      silent = true,
    },
  },

  config = function()
    vim.opt_local.conceallevel = 2

    require('obsidian').setup {
      disable_frontmatter = true,
      workspaces = {
        {
          path = '~/obsidian',
        },
      },
      notes_subdir = 'inbox',
      new_notes_location = 'notes_subdir',
      note_id_func = function(title)
        local suffix = ''
        if title ~= nil then
          suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
          if suffix:len() > 0 then
            suffix = suffix:gsub('^%l', string.upper)
          end
        else
          suffix = tostring(os.time())
        end
        return tostring(os.date '%Y-%m-%d') .. '_' .. suffix
      end,
      templates = {
        subdir = 'templates',
      },
      ui = {
        checkboxes = {},
      },
    }
  end,
}
