local augroup = vim.api.nvim_create_augroup("UserConfigGroup", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  group = augroup,
  callback = function()
    vim.cmd("Neotree close")
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
