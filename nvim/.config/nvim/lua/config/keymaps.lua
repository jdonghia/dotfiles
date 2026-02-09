vim.keymap.set('n', '<leader>pv', ':Oil<CR>', { silent = true })

vim.keymap.set('n', '<C-g>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

vim.keymap.set('n', '<leader>vs', '<cmd>vsplit<CR>')

vim.keymap.set('n', '<leader>tt', function()
  local dir

  -- Check if current buffer is an Oil buffer
  if vim.bo.filetype == 'oil' then
    dir = require('oil').get_current_dir()
  else
    dir = vim.fn.expand '%:p:h'
  end

  local cmd = "tmux split-window -h -c '" .. dir .. "'"

  vim.fn.system(cmd)
end, { noremap = true, silent = true })

