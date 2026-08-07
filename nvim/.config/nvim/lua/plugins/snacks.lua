return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false }, -- remove animation when scrolling,

    picker = {
      win = {
        input = {
          keys = {
            ["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } }, -- remapped since aerospace
          },
        },
      },
    },
  },
}
