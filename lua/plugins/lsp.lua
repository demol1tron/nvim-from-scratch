return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"gopls",
					"rust_analyzer",
					"pylsp",
					"ts_ls",
				},
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				"lua_ls",
				"clangd",
				"gopls",
				"rust_analyzer",
				"pylsp",
				"ts_ls",
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})
		end,
	},

	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.clang_format,
					null_ls.builtins.formatting.goimports,
				},
			})
		end,
	},
}
