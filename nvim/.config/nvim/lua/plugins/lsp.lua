return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
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

      vim.lsp.config('ts_ls', { capabilities = capabilities })
      vim.lsp.enable('ts_ls', true)

      vim.lsp.config('eslint', { capabilities = capabilities })
      vim.lsp.enable('eslint', true)

      vim.lsp.config('lua_ls', { capabilities = capabilities })
      vim.lsp.enable('lua_ls', true)

      vim.lsp.config('tailwindcss', { capabilities = capabilities })
      vim.lsp.enable('tailwindcss', true)

      vim.lsp.config('gopls', { capabilities = capabilities })
      vim.lsp.enable('gopls', true)

      vim.lsp.config('marksman', { capabilities = capabilities })
      vim.lsp.enable('marksman', true)

      vim.lsp.config('mdx_analyzer', { capabilities = capabilities })
      vim.lsp.enable('mdx_analyzer', true)

      vim.lsp.config('bashls', { capabilities = capabilities })
      vim.lsp.enable('bashls', true)

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
  {
    'j-hui/fidget.nvim',
    opts = {},
  },
}
