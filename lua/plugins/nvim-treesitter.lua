return{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_isstalled = {"lua", "python", "vim"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

