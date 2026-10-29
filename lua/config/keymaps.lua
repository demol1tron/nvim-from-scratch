local map = vim.keymap.set

-- Telescope
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
end, { desc = "Buffers (delete with <C-d>)" })
map("n", "<leader>fr", "<cmd>Telescope frecency<CR>", { desc = "Frecency" })

-- LSP
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format" })

-- Tabs & Buffers
map("n", "<Tab>", "gt", { desc = "Next tab" })
map("n", "<S-Tab>", "gT", { desc = "Prev tab" })
map("n", "<leader>ct", "<cmd>tabclose<CR>", { desc = "Close tab" })
map("n", "<leader>q", "<cmd>qall<CR>", { desc = "Quit" })
map("n", "<C-h>", "<cmd>Alpha<CR>", { desc = "Dashboard" })
map("n", "<C-e>", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<C-q>", "<cmd>bdelete<CR>", { desc = "Close buffer" })

-- Gitsigns
map("n", "]c", function()
  if vim.wo.diff then
    return "]c"
  end
  vim.schedule(function()
    require("gitsigns").next_hunk()
  end)
  return "<Ignore>"
end, { expr = true, desc = "Next Git hunk" })

map("n", "[c", function()
  if vim.wo.diff then
    return "[c"
  end
  vim.schedule(function()
    require("gitsigns").prev_hunk()
  end)
  return "<Ignore>"
end, { expr = true, desc = "Prev Git hunk" })

map("n", "<leader>hs", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })
map("n", "<leader>hr", function()
  require("gitsigns").reset_hunk()
end, { desc = "Reset hunk" })
map("n", "<leader>hp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview hunk" })
map("n", "<leader>hd", function()
  require("gitsigns").diffthis()
end, { desc = "Diff current file" })
map("n", "<leader>tb", function()
  require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle Git Blame" })

map("v", "<leader>hs", function()
  require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Stage selected block" })

map("v", "<leader>hr", function()
  require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Reset selected block" })

-- Diagnostic
map("n", "<leader>dd", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
end, { desc = "Toggle virtual text diagnostic" })
