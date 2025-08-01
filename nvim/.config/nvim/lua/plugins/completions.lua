return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    version = false,
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, 
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}



-- return {
--   'saghen/blink.cmp',
--   dependencies = {
--     'rafamadriz/friendly-snippets',
--   },
--   version = '0.*',
--   config = function()
--     require('blink.cmp').setup {
--
--       keymap = { preset = 'default' },
--
--       appearance = {
--         use_nvim_cmp_as_default = true,
--         nerd_font_variant = 'mono',
--       },
--
--       signature = { enabled = true },
--     }
--   end,
-- }
