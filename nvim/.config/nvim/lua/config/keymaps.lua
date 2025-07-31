vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-g>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

vim.keymap.set('n', '<leader>s', [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])

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

vim.keymap.set('n', '<leader>-', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>=', '<cmd>split<CR>')

vim.keymap.set('n', '<C-l>', 'gg<S-v>G')

vim.keymap.set('n', '<c-k>', '<cmd>cnext<cr>zz')
vim.keymap.set('n', '<c-j>', '<cmd>cprev<cr>zz')

-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.keymap.set('n', '<leader>k', '<cmd>lnext<cr>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<cr>zz')

-- GlazeWM and Windows stuff
vim.keymap.set('i', '<F4>', '', { noremap = true, silent = true })
vim.keymap.set('c', '<F4>', '', { noremap = true, silent = true })

vim.keymap.set('n', '-', '<cmd>Oil<cr>')

vim.keymap.set('n', '<leader>tt', function() -- 'tt' for "tmux terminal"
  local dir = vim.fn.expand '%:p:h'

  if dir == '' then
    print 'Error: No file path associated with this buffer.'
    return
  end

  local cmd = "tmux split-window -h -c '" .. dir .. "'"

  vim.fn.system(cmd)
end, { noremap = true, silent = true, desc = "Open new tmux pane in file's directory" })
