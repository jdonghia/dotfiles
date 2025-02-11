return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>pv",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },
}
