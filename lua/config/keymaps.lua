vim.g.maplocalleader = "\\"

local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<C-h>", "<cmd>Alpha<CR>", { desc = "Dashboard" })
map("n", "<C-e>", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })

map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>tg", "<cmd>Telescope live_grep<CR>", { desc = "Grep" })
map("n", "<leader>tb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fr", "<cmd>Telescope frecency<CR>", { desc = "Frecency" })

map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format" })

map("n", "<Tab>", "gt", { desc = "Next tab" })
map("n", "<S-Tab>", "gT", { desc = "Prev tab" })
map("n", "<leader>ct", "<cmd>tabclose<CR>", { desc = "Close tab" })

map("n", "<leader>q", "<cmd>bdelete<CR>", { desc = "Close buffer" })

map("n", "<C-s>", "<cmd>:w<CR>", { desc = "Save file" })
