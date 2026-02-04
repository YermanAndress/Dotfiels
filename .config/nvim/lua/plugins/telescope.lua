-- telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- Buscar archivos
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})  -- Buscar texto dentro de archivos
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})    -- Ver buffers abiertos
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})  -- Ayuda
  end,
}