return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {
    signs                        = {
      add          = { text = '┃' },
      change       = { text = '┃' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
    signs_staged                 = {
      add          = { text = '┃' },
      change       = { text = '┃' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
    signs_staged_enable          = true,
    signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl                        = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl                       = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff                    = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir                 = {
      follow_files = true
    },
    auto_attach                  = true,
    attach_to_untracked          = false,
    current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts      = {
      virt_text = true,
      virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
    blame_formatter              = nil, -- Use default
    sign_priority                = 6,
    update_debounce              = 100,
    status_formatter             = nil,   -- Use default
    max_file_length              = 40000, -- Disable if file is longer than this (in lines)
    preview_config               = {
      -- Options passed to nvim_open_win
      style = 'minimal',
      relative = 'cursor',
      row = 0,
      col = 1
    },
  },

  keys = {
    { "<leader>gh", ":Gitsigns toggle_linehl<CR>",             desc = "Git: toggle line highlight" },
    { "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", desc = "Git: toggle blame" },
    { "<leader>gp", ":Gitsigns preview_hunk<CR>",              desc = "Git: preview hunk" },
    { "<leader>gr", ":Gitsigns reset_hunk<CR>",                desc = "Git: reset hunk" },
    { "<leader>gR", ":Gitsigns reset_buffer<CR>",              desc = "Git: reset buffer" },
    { "<leader>gs", ":Gitsigns stage_hunk<CR>",                desc = "Git: stage hunk" },
    { "<leader>gu", ":Gitsigns undo_stage_hunk<CR>",           desc = "Git: undo stage hunk" },
    { "<leader>gd", ":Gitsigns diffthis<CR>",                  desc = "Git: diff this" },
  }
}
