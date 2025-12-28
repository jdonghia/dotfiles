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
    frontmatter = { enabled = false },
    statusline = { enabled = false },
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

    { '<leader>oo', '<cmd>Obsidian open<CR>', silent = true },
  },
}
