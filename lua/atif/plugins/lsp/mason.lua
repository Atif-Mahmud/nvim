return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of language servers for mason to install
      ensure_installed = {
        "gopls",
        "lua_ls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "stylua", -- lua formatter
        "prettier", -- prettier formatter
        "golangci-lint",
        -- "isort", -- python formatter
        -- "black", -- python formatter
        -- "pylint", -- for linter
      },
    })
  end,
}
