-- bufferline.lua
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- o "tabs"
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
      },
    })
  end,
}