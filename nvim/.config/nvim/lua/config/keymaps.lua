-- vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<c-k>', '<cmd>cnext<cr>zz')
vim.keymap.set('n', '<c-j>', '<cmd>cprev<cr>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<cr>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<cr>zz')

vim.keymap.set('n', '<leader>s', [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>m', '<cmd>messages<CR>')

vim.keymap.set('n', '<leader>-', '<cmd>vsplit<CR>')

-- vim.keymap.set('n', '<C-s>', 'ZZ')
