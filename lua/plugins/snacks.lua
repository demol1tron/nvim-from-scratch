return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		indent = { enabled = true },
		-- ???kitty???
		-- image = { enabled = true },
		terminal = { enabled = true },
		bufdelete = { enabled = true },
		notifier = { enabled = true },
		explorer = { enabled = true },
		picker = {
			enabled = true,
			ui_select = true,
		},
		dashboard = {
			enabled = true,
			preset = {
				header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⢀⠀⠀  ⠀
 ⠀⠀⠀⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⠛⠁⠀⠀⡆⠀⢀⣼⠀⠀⠀⠀
 ⠀⠀⠀⢾⠀⠀⠀⠀⠀⢀⢠⠂⠀⠀⠀⠀⣿⣇⡄⠀⠀⣰⠇⠀⠘⠀⠀⠀⠀⠀
 ⠀⠀⠀⢠⠀⠀⠀⠀⠀⢸⣄⠀⠀⢘⡄⢰⣿⣿⣣⣴⠁⢁⢀⢀⠀⠀⠀⢀⠆⠀
 ⢠⠀⠀⠘⠧⡀⠀⠰⡄⠈⢻⡄⢸⣿⣿⣿⣿⣿⣳⠋⣠⣷⠘⣸⠀⢠⡇⠈⠀⠀
 ⠰⣇⠀⢧⢠⠘⣦⠀⠀⡘⣾⣞⣿⣿⣿⣿⡿⢟⣿⣿⢿⣟⢀⠟⡄⠈⡇⠀⠀⠀
 ⠀⠨⡆⠀⠗⠛⠸⡇⢳⣷⣻⡟⠟⡿⣵⣯⣾⢿⣿⣧⣼⣿⢺⢠⣷⠀⠁⠀⠀⠀
 ⠰⢸⡇⢀⠈⠳⠶⠽⣆⣻⡟⣿⣇⣿⣿⣿⡏⣵⣿⡿⠛⠛⣾⢸⣣⠀⠀⠀⠀⠀
 ⠀⠀⢉⣾⡄⡁⣲⠫⢡⠘⣷⣿⡿⣧⢇⢿⣷⣿⠟⣡⠀⠀⣷⣟⡇⠀⠀⠀⠀⠀
 ⠀⠀⢰⣟⠛⠲⢤⣤⡤⠂⢄⢎⣿⣿⣶⣍⢍⡀⠀⠀⣀⣼⣿⡿⠇⠀⠀⠀⠀⠀
 ⠀⠀⢦⠙⢌⢭⡷⠾⠶⠶⢂⡲⢨⣿⣷⣝⠾⣝⡲⠶⢚⣫⣿⡃⢮⢢⠀⠀⠀⠀
 ⠀⠀⠈⠳⠀⠀⠀⠀⣤⣼⠷⣗⠘⣿⣿⠛⡳⠉⠻⢿⣿⢵⣮⡛⢤⣃⠇⠀⠀⠀
 ⠀⠀⠀⠀⠈⠀⠀⢈⣬⡝⣻⣛⠄⢛⣃⣐⡴⣭⣍⠳⡅⠀⠉⠲⠶⠟⠀⠀⠀⠀
 ⠀⠀⠀⠀⣀⣤⣶⡿⠛⢁⠀⠀⠀⠀⠀⠀⠀⡌⠛⠿⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠘⢿⣤⣘⣷⠶⠚⠛⠻⢶⣭⣁⣴⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠞⣼⣿⣾⣿⣞⠖⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ]],
				keys = {
					{
						icon = " ",
						key = "f",
						desc = "Find File",
						action = ":lua Snacks.dashboard.pick('files')",
					},
					{
						icon = " ",
						key = "g",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "n",
						desc = "New file",
						action = ":ene | startinsert",
					},
					{
						icon = " ",
						key = "s",
						desc = "Open last session",
						action = function()
							require("persistence").load()
						end,
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent files",
						action = function()
							Snacks.picker.recent()
						end,
					},
					{
						icon = " ",
						key = "q",
						desc = "Quit",
						action = ":qa",
					},
				},
			},
			sections = {
				{
					section = "header",
				},
				{
					section = "keys",
					gap = 1,
					padding = 1,
				},
				{
					section = "startup",
				},
			},
		},
	},
}
