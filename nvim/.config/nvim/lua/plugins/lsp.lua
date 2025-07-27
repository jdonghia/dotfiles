return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'saghen/blink.cmp',
      {
        'folke/lazydev.nvim',

        ft = 'lua',
        opts = {
          library = {
            { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
          },
        },
      },
    },
    config = function()
      vim.diagnostic.config { virtual_text = true }
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      require('lspconfig').ts_ls.setup { capabilities = capabilities }
      require('lspconfig').lua_ls.setup {}
      require('lspconfig').tailwindcss.setup {}
      require('lspconfig').gopls.setup {}
      require('lspconfig').marksman.setup {}
      -- require('lspconfig').mdx_analyzer.setup {}
      -- require('lspconfig').bashls.setup {}
      -- require('lspconfig').eslint.setup {}
    end,
  },

  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup {}
    end,
    dependencies = {

      {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        config = function()
          require('mason-tool-installer').setup {
            ensure_installed = {
              -- 'bash-language-server',
              'stylua',
              'prettierd',
              'eslint_d',
              'gopls',
              -- 'eslint-lsp',
              'typescript-language-server',
              'lua-language-server',
              'tailwindcss-language-server',
              'marksman',
              -- 'mdx-analyzer',
            },
          }
        end,
      },
    },
  },
}
