return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      default_file_explorer = false,
    }
  end,
  dependencies = { { 'echasnovski/mini.icons', config = true } },
  lazy = false,
  keys = {
    { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
  },
}
