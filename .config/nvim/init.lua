vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = 'split'

vim.opt.number = true
vim.opt.cursorline = true

vim.opt.title = true

vim.opt.scrolloff = 1
vim.opt.sidescrolloff = 5

vim.opt.clipboard = 'unnamed'
vim.opt.spelllang = 'en'

-- window manipulation with <leader>-w
vim.keymap.set('n', '<leader>w', '<c-w>')

-- plugins
require("config.lazy")
