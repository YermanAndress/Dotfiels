return {
  "https://github.com/nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null = require("null-ls")
    null.setup({
      sources = {
        null.builtins.diagnostics.eslint_d,
        null.builtins.code_actions.eslint_d,
        null.builtins.diagnostics.ruff,
        null.builtins.diagnostics.shellcheck,
      },
    })
  end,
}
