return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
    },
  },
  config = function()
    require('conform').setup {

      notify_on_error = true,
      formatters_by_ft = {
        golang = { 'gofumpt' },

        lua = { 'stylua' },

        -- Need to check why eslint is taking vanilla js so long to format
        -- javascript = { 'prettierd', 'eslint_d' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd', 'eslint_d' },
        astro = { 'prettierd', 'prettier' },

        typescriptreact = { 'prettierd', 'eslint_d' },
        javascriptreact = { 'prettierd', 'eslint_d' },

        json = { 'prettierd' },

        html = { 'prettierd' },
        css = { 'prettierd' },
        scss = { 'prettierd' },

        markdown = { 'prettierd' },
        mdx = { 'prettierd' },

      },
      formatters = {
        prettierd = {
          cwd = require('conform.util').root_file {
            '.prettierrc',
            '.prettierrc.json',
            '.prettierrc.js',
            'prettier.config.js',
            'package.json',
          },
        },
      },
    }
  end,
}
