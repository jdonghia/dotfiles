return {
  'stevearc/oil.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
      },
    }

    -- match dir color with hidden dir color (background oil dir issue)
    local comment_hl = vim.api.nvim_get_hl(0, { name = 'Comment' })

    vim.api.nvim_set_hl(0, 'OilDir', { fg = comment_hl.fg, bg = 'none' })
    vim.api.nvim_set_hl(0, 'OilDirHidden', { fg = '#6e6e66' })
    vim.api.nvim_set_hl(0, 'OilFileHidden', { fg = '#6e6e66' })
  end,
}
