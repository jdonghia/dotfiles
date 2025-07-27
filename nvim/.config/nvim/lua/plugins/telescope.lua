return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      {
        'nvim-tree/nvim-web-devicons',
        config = function()
          require('nvim-web-devicons').setup {}
        end,
      },
    },
  },
  keys = {
    {
      '<leader>pf',
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
          additional_args = {
            '--hidden',
            '--glob',
            '!package-lock.json',
            '!pnpm-lock.yaml',
          },
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
          'node_modules',
          '.git',
          '.next',
        },
      },
    }
  end,
}
