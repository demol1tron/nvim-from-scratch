vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:full", "full" }
vim.opt.wildoptions = { "pum" }
vim.opt.wildignorecase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.filetype.add({ extension = { asm = "nasm" } })
vim.opt.fileencodings = { "utf-8", "cp1251", "koi8-r", "latin1" }
