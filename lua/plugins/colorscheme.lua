return {
  -- "Mofiqul/vscode.nvim",
  -- config = function()
  -- 	vim.cmd("colorscheme vscode")
  -- end,
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("tokyonight-moon")
  end,
}
