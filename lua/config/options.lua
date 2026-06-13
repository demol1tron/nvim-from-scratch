vim.wo.number = true
vim.opt.clipboard = "unnamedplus"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:full", "full" }
vim.opt.wildoptions = { "pum" }
vim.opt.wildignorecase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.filetype.add({ extension = { asm = "nasm" } })
