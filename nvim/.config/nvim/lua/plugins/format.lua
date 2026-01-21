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

        javascript = { 'prettierd', 'eslint_d' },
        typescript = { 'prettierd', 'eslint_d' },

        typescriptreact = { 'prettierd', 'eslint_d' },
        javascriptreact = { 'prettierd', 'eslint_d' },

        json = { 'prettierd' },

        html = { 'prettierd' },
        css = { 'prettierd' },
        scss = { 'prettierd' },

        markdown = { 'prettierd' },
        mdx = { 'prettierd' },

        formatters = {
          eslint_d = {
            condition = function(ctx)
              return vim.fs.find({
                'eslint.config.js',
                'eslint.config.mjs',
              }, { path = ctx.filename, upward = true })[1]
            end,
          },
        },
      },
    }
  end,
}
