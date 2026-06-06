return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
    keys = {
      { "<C-n>", LazyVim.pick("files", { hidden = true }), desc = "Find Files (Root Dir)" },
      { "<leader>ps", LazyVim.pick("grep", { hidden = true }), desc = "Grep (Root Dir)" },
    },
  },
}
