return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("tokyonight-moon")
		vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, bg = "#4b2228" })
	end,
}
