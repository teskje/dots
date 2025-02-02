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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  command = "setlocal shiftwidth=2 tabstop=2",
})

require('config.keys')
require('config.lazy')
