return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'master',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        auto_install = true,

        highlight = {
          enable = true,
        },

        indent = { enable = true },
      }
    end,
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
