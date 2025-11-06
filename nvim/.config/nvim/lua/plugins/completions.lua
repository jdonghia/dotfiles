return {
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
