return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  ft = 'markdown',
  config = function()
    require('obsidian').setup {

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
    }
  end,
  keys = {
    { '<leader>oo', '<cmd>Obsidian open<CR>', silent = true },
  },
}
