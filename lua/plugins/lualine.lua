return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				globalstatus = true,
				theme = "auto",

				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", path = 1 } },

				lualine_x = {
					{
						"encoding",
						fmt = function(str)
							return str:upper()
						end,
					},
					"fileformat",
					"filetype",
				},
				lualine_y = {
					function()
						return "Total: " .. vim.api.nvim_buf_line_count(0)
					end,
					"progress",
				},
				lualine_z = { "location" },
			},
		})
	end,
}
