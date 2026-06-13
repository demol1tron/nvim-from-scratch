return {
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = {},
	},

	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⢀⠀⠀  ⠀]],
				[[ ⠀⠀⠀⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⠛⠁⠀⠀⡆⠀⢀⣼⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⢾⠀⠀⠀⠀⠀⢀⢠⠂⠀⠀⠀⠀⣿⣇⡄⠀⠀⣰⠇⠀⠘⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⢠⠀⠀⠀⠀⠀⢸⣄⠀⠀⢘⡄⢰⣿⣿⣣⣴⠁⢁⢀⢀⠀⠀⠀⢀⠆⠀]],
				[[ ⢠⠀⠀⠘⠧⡀⠀⠰⡄⠈⢻⡄⢸⣿⣿⣿⣿⣿⣳⠋⣠⣷⠘⣸⠀⢠⡇⠈⠀⠀]],
				[[ ⠰⣇⠀⢧⢠⠘⣦⠀⠀⡘⣾⣞⣿⣿⣿⣿⡿⢟⣿⣿⢿⣟⢀⠟⡄⠈⡇⠀⠀⠀]],
				[[ ⠀⠨⡆⠀⠗⠛⠸⡇⢳⣷⣻⡟⠟⡿⣵⣯⣾⢿⣿⣧⣼⣿⢺⢠⣷⠀⠁⠀⠀⠀]],
				[[ ⠰⢸⡇⢀⠈⠳⠶⠽⣆⣻⡟⣿⣇⣿⣿⣿⡏⣵⣿⡿⠛⠛⣾⢸⣣⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⢉⣾⡄⡁⣲⠫⢡⠘⣷⣿⡿⣧⢇⢿⣷⣿⠟⣡⠀⠀⣷⣟⡇⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⢰⣟⠛⠲⢤⣤⡤⠂⢄⢎⣿⣿⣶⣍⢍⡀⠀⠀⣀⣼⣿⡿⠇⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⢦⠙⢌⢭⡷⠾⠶⠶⢂⡲⢨⣿⣷⣝⠾⣝⡲⠶⢚⣫⣿⡃⢮⢢⠀⠀⠀⠀]],
				[[ ⠀⠀⠈⠳⠀⠀⠀⠀⣤⣼⠷⣗⠘⣿⣿⠛⡳⠉⠻⢿⣿⢵⣮⡛⢤⣃⠇⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⠈⠀⠀⢈⣬⡝⣻⣛⠄⢛⣃⣐⡴⣭⣍⠳⡅⠀⠉⠲⠶⠟⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⣀⣤⣶⡿⠛⢁⠀⠀⠀⠀⠀⠀⠀⡌⠛⠿⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⠀⠀⠘⢿⣤⣘⣷⠶⠚⠛⠻⢶⣭⣁⣴⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠞⣼⣿⣾⣿⣞⠖⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			}
			dashboard.section.header.opts.hl = "DiagnosticError"
			dashboard.section.buttons.val = {
				dashboard.button("e", "  New file", "<cmd>ene<CR>"),
				dashboard.button("s", "  Open last session", ":lua require('persistence').load()<CR>"),
				dashboard.button("r", "  Frecency/MRU", "<cmd>Telescope frecency<CR>"),
				dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
			}

			alpha.setup(dashboard.opts)
		end,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
