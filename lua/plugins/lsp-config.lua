return{ 
  "williamboman/mason.nvim",
  -- "williamboman/mason-lspconfig.nvim",
  --"neovim/nvim-lspconfig", 
  config = function()
    require("mason").setup()
    --    require("mason-lspconfig").setup({
    --      ensure_installed = { "lua_ls", "ast_grep" },
    --    })
    --    require("lspconfig").lua_ls.setup {}
    --    require("lspconfig").ast_grep.setup {}
  end
}
