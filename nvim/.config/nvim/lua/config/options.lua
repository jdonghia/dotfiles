vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = ''

-- vim.opt.swapfile = false
-- vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.updatetime = 50

-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- vim.opt.wrap = false

vim.opt.cursorline = true

vim.opt.signcolumn = 'yes'

vim.opt.breakindent = true
vim.opt.scrolloff = 8
