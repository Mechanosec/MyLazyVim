return {
  {
    "HiPhish/nvim-ts-rainbow2",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        rainbow = {
          enable = true,
          query = {
            "rainbow-parens",
            tsx = "rainbow-parens-react",
            jsx = "rainbow-parens-react",
          },
        },
      })
    end,
  },
}
