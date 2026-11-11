return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	cmd = { "ColorizerToggle", "ColorizerAttachToBuffer" },
	opts = {
		filetypes = { "*" },
		user_default_options = {
			RGB = true,
			RRGGBB = true,
			names = false,
			RRGGBBAA = true,
			css = true,
			tailwind = true,
		},
	},
}
