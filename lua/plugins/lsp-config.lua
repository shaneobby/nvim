return {
  -- Fidget: LSP progress/status UI
  {
    "j-hui/fidget.nvim",
    opts = {
      progress = {
        display = {
          render_limit = 10, -- show up to 10 simultaneous tasks
        },
      },
      notification = {
        window = {
          normal_hl = "Normal",
          winblend = 0,
        },
      },
    },
  },

  -- Mason: LSP/DAP/Linter/Formatter manager
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  -- Mason-LSPConfig: Bridge between Mason and nvim-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "jdtls",
      },
      automatic_installation = true,
    },
  },

  -- Mason-Tool-Installer: For non-LSP tools (linters, formatters, etc.)
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua",   -- Lua formatter
        "prettier", -- JS/TS/HTML/CSS formatter
        "eslint_d", -- JS/TS linter
      },
      auto_update = true,
      run_on_start = true,
    },
  },
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',

    opts = {
      keymap = { preset = 'default' },

      appearance = {
        nerd_font_variant = 'mono'},

      completion = { documentation = { auto_show = false } },

    } 
  }
}
