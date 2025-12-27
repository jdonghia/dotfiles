return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  ft = 'markdown',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false,
    ui = { enable = false },
    workspaces = {
      {
        name = 'obsidian',
        path = '~/obsidian',
      },
    },
    disable_frontmatter = true,
  },

  keys = {
    { 'gt', '<cmd>Obsidian tags<CR>', silent = true },

    { 'gf', '<cmd>Obsidian backlinks<CR>', silent = true },
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
      '<leader>odd',
      ":!mkdir -p ~/obsidian/.trash && mv '%:p' ~/obsidian/.trash<cr>:bd<cr>",
      mode = 'n',
      silent = true,
    },
    {
      '<leader>oo',
      function()
        local is_running = vim.fn.system('pgrep -x Obsidian'):match '%d+'

        vim.cmd 'Obsidian open'
      end,
      mode = 'n',
      silent = true,
    },
  },
}
