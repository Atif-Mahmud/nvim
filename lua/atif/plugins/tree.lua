return {
  "preservim/nerdtree",
  config = function()
    vim.keymap.set("n", "<c-n>", ":NERDTreeToggle<cr>")
  end,
}

-- NVIM Tree WIP
-- return {
--   "nvim-tree/nvim-tree.lua",
--   version = "*",
--   lazy = false,
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("nvim-tree").setup {}
--   end,
-- }
