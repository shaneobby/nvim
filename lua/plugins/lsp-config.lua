return {
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      -- import mason
      local mason = require("mason")

      -- import mason-lspconfig
      local mason_lspconfig = require("mason-lspconfig")

      local mason_tool_installer = require("mason-tool-installer")

      -- enable mason and configure icons
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
        -- list of servers for mason to install
        ensure_installed = {
          "lua_ls",
          "ast_grep",
          "jdtls",
        },
      })

      mason_tool_installer.setup({
        ensure_installed = {
          "stylua", -- lua formatter
          "pylint",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.jdtls.setup({
        cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
        root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
      })
      lspconfig.ast_grep.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
      vim.keymap.set("n", "<C-w>d", vim.diagnostic.open_float, {})
      vim.keymap.set("i","jj","<esc>",{})
    end,
  },
}
