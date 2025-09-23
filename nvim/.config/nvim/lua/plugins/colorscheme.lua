return {
  {
    -- 'rose-pine/neovim',
    'ellisonleao/gruvbox.nvim',
    config = function()
      -- require('rose-pine').setup {
      --   styles = {
      --     transparency = true,
      --   },
      --
      -- }

      require('gruvbox').setup {
        transparent_mode = true,
      }

      -- vim.cmd 'colorscheme rose-pine'
      vim.cmd 'colorscheme gruvbox'
    end,
  },
}
