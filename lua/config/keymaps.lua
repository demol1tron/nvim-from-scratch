vim.g.maplocalleader = "\\"

local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>gg", "<cmd>Telescope live_grep<CR>", { desc = "Grep" })

map("n", "<leader>bb", function()
  local builtin = require("telescope.builtin")
  local actions = require("telescope.actions")

  builtin.buffers({
    attach_mappings = function(_, map_inner)
      map_inner("i", "<C-d>", actions.delete_buffer)
      map_inner("n", "<C-d>", actions.delete_buffer)
      return true
    end,
  })
end, { desc = "Buffers (with delete using <C-d>)" })

map("n", "<leader>fr", "<cmd>Telescope frecency<CR>", { desc = "Frecency" })

map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format" })

map("n", "<Tab>", "gt", { desc = "Next tab" })
map("n", "<S-Tab>", "gT", { desc = "Prev tab" })
map("n", "<leader>ct", "<cmd>tabclose<CR>", { desc = "Close tab" })

map("n", "<leader>q", "<cmd>:qall<CR>", { desc = "Quit" })

map("n", "<C-h>", "<cmd>Alpha<CR>", { desc = "Dashboard" })
map("n", "<C-e>", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })

map("n", "<C-s>", "<cmd>:w<CR>", { desc = "Save file" })
map("n", "<C-q>", "<cmd>:q<CR>", { desc = "Quit" })
map("n", "<C-q>", "<cmd>bdelete<CR>", { desc = "Close buffer" })
