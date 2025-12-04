return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'master',
    build = ':TSUpdate',
    opts = {
      auto_install = true,

      highlight = {
        enable = true,
      },

      indent = { enable = true },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup {
        max_lines = 2,
      }
    end,
  },
}
