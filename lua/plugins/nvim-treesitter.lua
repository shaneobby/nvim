return{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_isstalled = {"lua", "python", "vim", "java"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

