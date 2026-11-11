local map = vim.keymap.set

map("n", "<leader>q", "<cmd>qa<CR>", { desc = "Quit" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<C-q>", function()
	Snacks.bufdelete()
end, { desc = "Close buffer" })

-- Snacks picker
map("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find files" })
map("n", "<leader>gr", function()
	Snacks.picker.grep()
end, { desc = "Live grep" })
map("n", "<leader>bb", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
map("n", "<leader>fs", function()
	Snacks.picker.smart()
end, { desc = "Frecency" })
map("n", "<leader>fr", function()
	Snacks.picker.recent()
end, { desc = "Recent files" })

-- LSP
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format" })

-- Dynamic helper
local function get_current_file_dir()
	local filepath = vim.api.nvim_buf_get_name(0)
	if filepath ~= "" and vim.bo.buftype == "" then
		return vim.fs.dirname(filepath)
	end
	return vim.fn.getcwd()
end

-- Explorer
map("n", "<C-e>", function()
	Snacks.explorer({ cwd = get_current_file_dir() })
end, { desc = "Toggle Explorer" })

-- Terminal
local function toggle_terminal()
	for _, term in ipairs(Snacks.terminal.list()) do
		if term:win_valid() then
			term:hide()
			return
		end
	end
	Snacks.terminal.toggle(nil, { cwd = get_current_file_dir() })
end
map({ "n", "t" }, "<C-\\>", toggle_terminal, { desc = "Toggle Terminal" })

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
map("n", "<leader>td", function()
	local current = vim.diagnostic.config().virtual_text
	vim.diagnostic.config({ virtual_text = not current })
end, { desc = "Toggle virtual text diagnostic" })

-- TreeSJ
map("n", "<leader>m", "<cmd>TSJToggle<cr>", { desc = "Toggle Split/Join" })

-- Harpoon
local function harpoon()
	return require("harpoon")
end

map("n", "<leader>a", function()
	harpoon():list():add()
	vim.notify("File added to Harpoon", vim.log.levels.INFO)
end, { desc = "Harpoon: Add file" })

map("n", "<leader>H", function()
	harpoon().ui:toggle_quick_menu(harpoon():list())
end, { desc = "Harpoon: Quick menu" })

map("n", "<leader>fh", function()
	local items = {}
	for _, item in ipairs(harpoon():list().items) do
		if item.value and item.value ~= "" then
			table.insert(items, { text = item.value, file = item.value })
		end
	end
	Snacks.picker({
		title = "Harpoon Marks",
		items = items,
		format = "file",
	})
end, { desc = "Harpoon Marks (Snacks Picker)" })

map("n", "<leader>1", function()
	harpoon():list():select(1)
end, { desc = "Harpoon: File 1" })
map("n", "<leader>2", function()
	harpoon():list():select(2)
end, { desc = "Harpoon: File 2" })
map("n", "<leader>3", function()
	harpoon():list():select(3)
end, { desc = "Harpoon: File 3" })
map("n", "<leader>4", function()
	harpoon():list():select(4)
end, { desc = "Harpoon: File 4" })

map("n", "]h", function()
	harpoon():list():next()
end, { desc = "Harpoon: Next mark" })
map("n", "[h", function()
	harpoon():list():prev()
end, { desc = "Harpoon: Prev mark" })
