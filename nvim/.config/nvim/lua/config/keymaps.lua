vim.keymap.set("n", "<leader>pv", ":Oil<CR>", { silent = true })

vim.keymap.set("n", "<C-g>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

vim.keymap.set("n", "<leader>uA", function()
  local clients = vim.lsp.get_clients({ name = "copilot" })
  if #clients > 0 then
    vim.lsp.enable("copilot", false)
    vim.notify("Copilot disabled", vim.log.levels.INFO)
  else
    vim.lsp.enable("copilot", true)
    vim.notify("Copilot enabled", vim.log.levels.INFO)
  end
end, { desc = "Toggle Copilot" })
