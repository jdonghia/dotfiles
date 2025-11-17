return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>pf",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
        })
      end,
      mode = "n",
    },
    {
      "<leader>ps",
      function()
        require("telescope.builtin").live_grep({
          additional_args = {
            "--hidden",
            "--glob",
            "!package-lock.json",
            "--glob",
            "!pnpm-lock.yaml",
          },
        })
      end,
      mode = "n",
    },
    {
      "<leader>g",
      function()
        require("telescope.builtin").grep_string({
          hidden = true,
        })
      end,
      mode = "n",
    },
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",
        ".git",
        ".next",
      },
    },
  },
}
