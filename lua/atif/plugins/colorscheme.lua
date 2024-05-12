return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "latte",
      background = {
        light = "latte",
        dark = "frappe",
      },
      integrations = {
        cmp = true,
        hop = true,
        telescope = {
          enabled = true,
        },
        treesitter = true,
        gitsigns = true,
        lsp_trouble = true,
        mason = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
