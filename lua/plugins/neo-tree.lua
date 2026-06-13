return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",

		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						visible = true,
					},

					hijack_netrw_behavior = "open_default",
					use_libuv_file_watcher = true,

					follow_current_file = {
						enabled = true,
						leave_dirs_open = true,
					},

					commands = {
						trash = function(state)
							local inputs = require("neo-tree.ui.inputs")
							local path = state.tree:get_node().path

							inputs.confirm("Move to trash?", function(confirmed)
								if confirmed then
									vim.fn.system({ "trash-put", path })
									require("neo-tree.sources.manager").refresh(state.name)
								end
							end)
						end,
					},

					window = {
						width = 25,
						mappings = {
							["d"] = "trash",
						},
					},
				},
			})
		end,
	},
}
