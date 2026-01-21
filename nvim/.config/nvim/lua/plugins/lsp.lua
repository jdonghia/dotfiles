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
      {
        'j-hui/fidget.nvim',
        config = function()
          require('fidget').setup {}
        end,
      },
    },
    config = function()
      vim.diagnostic.config { virtual_text = true }
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      vim.lsp.config('ts_ls', { capabilities = capabilities })
      vim.lsp.enable('ts_ls', true)

      vim.lsp.config('lua_ls', { capabilities = capabilities })
      vim.lsp.enable('lua_ls', true)

      vim.lsp.config('tailwindcss', { capabilities = capabilities })
      vim.lsp.enable('tailwindcss', true)

      vim.lsp.config('marksman', { capabilities = capabilities })
      vim.lsp.enable('marksman', true)

      vim.lsp.config('mdx_analyzer', { capabilities = capabilities })
      vim.lsp.enable('mdx_analyzer', true)

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
              'typescript-language-server',
              'tailwindcss-language-server',
              'eslint_d',
              'prettierd',
              'js-debug-adapter',
              'marksman',
              'mdx-analyzer',
              'stylua',
              'lua-language-server',
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
    'rafamadriz/friendly-snippets',
  },
  {
    'saghen/blink.cmp',
    config = function()
      require('blink.cmp').setup {
        fuzzy = { implementation = 'lua' },
        keymap = {
          ['<C-h>'] = {
            function(cmp)
              cmp.show { providers = { 'snippets' } }
            end,
          },

          ['<C-k>'] = { 'show', 'show_documentation', 'hide_documentation' },
          preset = 'super-tab',
        },
      }
    end,
  },
  {
    'L3MON4D3/LuaSnip',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end,
  },
}
