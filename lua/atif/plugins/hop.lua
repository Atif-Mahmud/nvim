return {
  "smoka7/hop.nvim",
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })

    -- keymaps
    vim.api.nvim_set_keymap("", "F", "<cmd>lua require'hop'.hint_char1({ current_line_only = true })<cr>", {})
    vim.api.nvim_set_keymap(
      "",
      "t",
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
      {}
    )
    vim.api.nvim_set_keymap(
      "",
      "T",
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
      {}
    )
    vim.api.nvim_set_keymap("", "?", "<cmd>HopPattern<cr>", {})
    vim.api.nvim_set_keymap("", "f", "<cmd>HopWord<cr>", {})
  end,
}
