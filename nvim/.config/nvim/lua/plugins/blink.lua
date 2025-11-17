return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<C-h>"] = {
        function(cmp)
          cmp.show({ providers = { "snippets" } })
        end,
      },
      ["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
      preset = "super-tab",
    },
  },
}
