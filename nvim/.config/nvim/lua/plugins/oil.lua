return {
  'stevearc/oil.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  config = function()
    require('oil').setup {
      default_file_explorer = false,
  }
  end,
}
