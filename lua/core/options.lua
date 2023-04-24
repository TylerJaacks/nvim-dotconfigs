vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.showcmd = true
vim.opt.laststatus = 4
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.autoread = true
vim.opt.showmatch = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smarttab = true 

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true