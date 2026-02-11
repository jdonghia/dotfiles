return {
  'loctvl842/monokai-pro.nvim',
  config = function()
    require('monokai-pro').setup {
      transparent_background = true,
    }

    vim.cmd.colorscheme 'monokai-pro-classic'
  end,
}
