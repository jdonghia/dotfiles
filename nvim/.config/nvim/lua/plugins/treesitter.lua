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

        -- ensure_installed = {
        --   'lua',
        --   'javascript',
        --   'typescript',
        --   'markdown',
        --   'markdown_inline',
        --   'bash',
        --   'json',
        --   'go',
        --   'html',
        --   'scss',
        --   'css',
        -- },
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


