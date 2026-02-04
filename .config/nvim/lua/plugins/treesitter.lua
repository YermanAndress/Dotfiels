return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "markdown",
        "markdown_inline",
        "python",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "c",
        "cpp",
        "yaml",
        "toml",
        "go",
        "rust",
        "java",
        "kotlin",
        "ruby",
        "sql"
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
