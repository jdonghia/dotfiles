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
      require('lspconfig').eslint.setup { capabilities = capabilities }
      require('lspconfig').lua_ls.setup { capabilities = capabilities }
      require('lspconfig').tailwindcss.setup { capabilities = capabilities }
      require('lspconfig').gopls.setup { capabilities = capabilities }
      require('lspconfig').marksman.setup { capabilities = capabilities }
      require('lspconfig').mdx_analyzer.setup { capabilities = capabilities }
      require('lspconfig').bashls.setup { capabilities = capabilities }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = args.buf, desc = 'Code Action' })
        end,
      })
    end,
  },

  {
    'williamboman/mason.nvim',
    dependencies = {
      {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        config = function()
          require('mason-tool-installer').setup {
            ensure_installed = {
              'stylua',
              'prettierd',
              'gopls',
              'typescript-language-server',
              'lua-language-server',
              'tailwindcss-language-server',
              'marksman',
              'eslint_d',
              'eslint-lsp',
              'bash-language-server',
              'mdx-analyzer',
            },
          }
        end,
      },
    },

    config = function()
      require('mason').setup {}
    end,
  },
}
