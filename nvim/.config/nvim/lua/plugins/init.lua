return {
  -- { 'xiyaowong/transparent.nvim', config = function() end },

  -- {
  -- 'lewis6991/gitsigns.nvim',
  -- opts = {
  --   signs = {
  --     add = { text = '+' },
  --     change = { text = '~' },
  --     delete = { text = '_' },
  --     topdelete = { text = '‾' },
  --     changedelete = { text = '~' },
  --   },
  -- },
  -- },

  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      max_lines = 1,
    },
  },

  {
    'nvim-tree/nvim-web-devicons',
    opts = {},
  },

  -- icons for netrw Ex
  {
    'prichrd/netrw.nvim',
    opts = {},
  },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd 'colorscheme solarized-osaka'
    end,
  },

  -- {
  --   'projekt0n/github-nvim-theme',
  --   name = 'github-theme',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd 'colorscheme github_dark'
  --   end,
  -- },

  -- {
  --   'rebelot/kanagawa.nvim',
  --   config = function()
  --     vim.cmd 'colorscheme kanagawa'
  --     vim.api.nvim_set_hl(0, 'normal', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'normalfloat', { bg = 'none' })
  --   end,
  -- },

  -- {
  --   'akinsho/toggleterm.nvim',
  --   opts = {
  --     direction = 'float',
  --     float_opts = {
  --       border = 'double',
  --     },
  --     start_in_insert = true,
  --     persist_mode = false,
  --   },
  --   config = function(_, opts)
  --     require('toggleterm').setup(opts)
  --
  --     local Terminal = require('toggleterm.terminal').Terminal
  --
  --     local lazygit_term = Terminal:new {
  --       cmd = 'lazygit',
  --       dir = 'git_dir',
  --       hidden = true,
  --       direction = 'float',
  --       float_opts = {
  --         border = 'double',
  --       },
  --       close_on_exit = false,
  --       on_open = function(term)
  --         vim.cmd 'startinsert!'
  --
  --         -- <C-/> (Ctrl + /)
  --         vim.keymap.set('t', '<C-c>', function()
  --           term:toggle()
  --         end, { buffer = term.bufnr, noremap = true, silent = true })
  --       end,
  --     }
  --
  --     function _LAZYGIT_TOGGLE()
  --       lazygit_term:toggle()
  --     end
  --
  --     vim.keymap.set('n', '<leader>lg', _LAZYGIT_TOGGLE, { desc = 'Lazygit (toggleterm)' })
  --   end,
  -- },

  {
    'nvim-lualine/lualine.nvim',
    opts = {
      sections = {
        lualine_a = { 'branch' },
        -- lualine_z = { 'diagnostics' },
        lualine_z = { 'mode' },
        lualine_b = {},
        lualine_x = {},
        lualine_y = {},
        lualine_c = { { icon_only = true, 'filetype' }, { 'filename', path = 4 } },
      },
    },
  },

  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      cmd_line = {
        enabled = true,
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    keys = {
      {
        '<leader>snh',
        function()
          require('noice').cmd 'history'
        end,
        desc = 'Noice History',
      },
    },
  },

  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
    keys = function()
      local keys = {
        {
          '<leader>h',
          function()
            require('harpoon'):list():add()
          end,
          desc = 'Harpoon File',
        },
        {
          '<C-e>',
          function()
            local harpoon = require 'harpoon'
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = 'Harpoon Quick Menu',
        },
      }

      for i = 1, 5 do
        table.insert(keys, {
          '<leader>' .. i,
          function()
            require('harpoon'):list():select(i)
          end,
          desc = 'Harpoon to File ' .. i,
        })
      end
      return keys
    end,
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    opts = function()
      return {
        indent = {
          char = '│',
          tab_char = '│',
        },
        scope = { show_start = false, show_end = false },
        exclude = {
          filetypes = {
            'Trouble',
            'alpha',
            'dashboard',
            'help',
            'lazy',
            'mason',
            'neo-tree',
            'notify',
            'snacks_dashboard',
            'snacks_notif',
            'snacks_terminal',
            'snacks_win',
            'toggleterm',
            'trouble',
          },
        },
      }
    end,
    main = 'ibl',
  },

  {
    'mbbill/undotree',
    config = function()
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
    keys = {
      { '<leader>u', '<cmd>UndotreeToggle<cr>' },
    },
  },

  {
    'MagicDuck/grug-far.nvim',
    opts = { headerMaxWidth = 80 },
    cmd = 'GrugFar',
    keys = {
      {
        '<leader>sr',
        function()
          local grug = require 'grug-far'
          local ext = vim.bo.buftype == '' and vim.fn.expand '%:e'
          grug.open {
            transient = true,
            prefills = {
              filesFilter = ext and ext ~= '' and '*.' .. ext or nil,
            },
          }
        end,
        mode = { 'n', 'v' },
        desc = 'Search and Replace',
      },
    },
  },

  {
    'windwp/nvim-ts-autotag',
    opts = {},
    per_filetype = {
      ['html'] = {
        enable_close = false,
      },
    },
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require('nvim-autopairs').setup {}
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
  },

  {
    'tpope/vim-sleuth',
  },

  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    lazy = true,
    opts = {
      enable_autocmd = false,
    },
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
    end,
  },

  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
    },
    keys = {

      {
        '<leader>pf',
        function()
          local builtin = require 'telescope.builtin'
          builtin.find_files {
            no_ignore = false,
            hidden = true,
            file_ignore_patterns = { '.git/' },
          }
        end,
        desc = 'Lists files in your current working directory, respects .gitignore',
      },

      {
        '<leader>ps',
        function()
          local builtin = require 'telescope.builtin'
          builtin.live_grep {
            additional_args = { '--hidden' },
            file_ignore_patterns = { '.git/' },
          }
        end,
        desc = 'Search for a string in your current working directory and get results live as you type, respects .gitignore',
      },

      {
        '<leader>g',
        function()
          local builtin = require 'telescope.builtin'
          builtin.grep_string {
            additional_args = { '--hidden' },
          }
        end,
      },
    },
    config = function()
      vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })

      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')
    end,
  },

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
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      'hrsh7th/cmp-nvim-lsp',
      {
        'pmizio/typescript-tools.nvim',
        opts = {},
      },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- Jump to the definition of the word under your cursor.
          --  This is where a variable was first declared, or where a function is defined, etc.
          --  To jump back, press <C-t>.
          map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')

          -- Find references for the word under your cursor.
          map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

          -- Rename the variable under your cursor.
          map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

          ---@param client vim.lsp.Client
          ---@param method vim.lsp.protocol.Method
          ---@param bufnr? integer some lsp support methods only in specific files
          ---@return boolean
          local function client_supports_method(client, method, bufnr)
            if vim.fn.has 'nvim-0.11' == 1 then
              return client:supports_method(method, bufnr)
            else
              return client.supports_method(method, { bufnr = bufnr })
            end
          end

          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end
        end,
      })

      vim.diagnostic.config {
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        underline = { severity = vim.diagnostic.severity.ERROR },
        signs = vim.g.have_nerd_font and {
          text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = '󰋽 ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
          },
        } or {},
        virtual_text = {
          source = 'if_many',
          spacing = 2,
          format = function(diagnostic)
            local diagnostic_message = {
              [vim.diagnostic.severity.ERROR] = diagnostic.message,
              [vim.diagnostic.severity.WARN] = diagnostic.message,
              [vim.diagnostic.severity.INFO] = diagnostic.message,
              [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
          end,
        },
      }

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      local function organize_imports()
        local params = {
          command = '_typescript.organizeImports',
          arguments = { vim.api.nvim_buf_get_name(0) },
          title = '',
        }
        vim.lsp.buf.execute_command(params)
      end

      vim.keymap.set('n', '<leader>oi', '<cmd>OrganizeImports<CR>')
      vim.keymap.set('n', '<leader>ai', '<cmd>TSToolsAddMissingImports<CR>')

      local servers = {
        tailwindcss = {},
        ts_ls = {
          commands = {
            OrganizeImports = {
              organize_imports,
              description = 'Organize Imports',
            },
          },
        },
        lua_ls = {},
        -- lua_ls = {
        --   -- cmd = { ... },
        --   -- filetypes = { ... },
        --   -- capabilities = {},
        --   settings = {
        --     Lua = {
        --       completion = {
        --         callSnippet = 'Replace',
        --       },
        --     },
        --   },
        -- },
      }

      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'stylua',
        'prettierd',

        -- format eslint
        'eslint_d',

        -- check eslint errors
        'eslint-lsp',
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        ensure_installed = {}, -- explicitly set to an empty table (Kickstart populates installs via mason-tool-installer)
        automatic_installation = false,
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },

  {
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
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = true,
      -- format_on_save = function(bufnr)
      --   local disable_filetypes = { c = true, cpp = true }
      --   local lsp_format_opt
      --   if disable_filetypes[vim.bo[bufnr].filetype] then
      --     lsp_format_opt = 'never'
      --   else
      --     lsp_format_opt = 'fallback'
      --   end
      --   return {
      --     timeout_ms = 500,
      --     lsp_format = lsp_format_opt,
      --   }
      -- end,
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettierd', 'eslint_d' },
        typescript = { 'prettierd', 'eslint_d' },
        typescriptreact = { 'prettierd', 'eslint_d' },
        javascriptreact = { 'prettierd', 'eslint_d' },
        json = { 'prettierd', 'eslint_d' },
      },
    },
  },

  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          -- {
          --   'rafamadriz/friendly-snippets',
          --   config = function()
          --     require('luasnip.loaders.from_vscode').lazy_load()
          --   end,
          -- },
        },
      },
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'mlaursen/vim-react-snippets',
    },
    opts = function()
      require('vim-react-snippets').lazy_load()
    end,
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      luasnip.config.setup {}

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = 'menu,menuone,noinsert' },

        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),

          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<CR>'] = cmp.mapping.confirm { select = true },

          -- Think of <c-l> as moving to the right of your snippet expansion.
          --  So if you have a snippet that's like:
          --  function $name($args)
          --    $body
          --  end
          --
          -- <c-l> will move you to the right of each of the expansion locations.
          -- <c-h> is similar, except moving you backwards.
          ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' }),
        },
        sources = {
          {
            name = 'lazydev',
            group_index = 0,
          },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'nvim_lsp_signature_help' },
        },
      }
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
    },
  },
}
