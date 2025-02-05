return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({
      pickers = {
        buffers = {
          initial_mode = "normal",
        },
      },
    })
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", ";f", builtin.find_files, { silent = true })
    vim.keymap.set("n", ";r", builtin.live_grep, { silent = true })
    vim.keymap.set("n", "<leader>bf", builtin.buffers, { silent = true })
  end,
}
