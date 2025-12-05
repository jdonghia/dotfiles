return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    {
      '<C-n>',
      function()
        require('telescope.builtin').find_files {
          hidden = true,
        }
      end,
      mode = 'n',
    },
    {
      '<leader>ps',
      function()
        require('telescope.builtin').live_grep {
          hidden = {
            true,
          },
          -- additional_args = {
          --   '--hidden',
          --  '--glob',
          --   '!package-lock.json',
          --   '--glob',
          --   '!pnpm-lock.yaml',
          -- },
        }
      end,
      mode = 'n',
    },
    {
      '<leader>g',
      function()
        require('telescope.builtin').grep_string {
          hidden = true,
        }
      end,
      mode = 'n',
    },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        file_ignore_patterns = {
          '.git/',
        },
      },
    }
  end,
}
