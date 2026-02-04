return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
        width = 35,
      },
      filesystem = {

        -- 🔥 COMPACTA CARPETAS VACÍAS
        group_empty_dirs = true,

        -- Cambio realizado aquí: de booleano a tabla
        follow_current_file = {
          enabled = true, -- Esto soluciona el aviso
          leave_dirs_open = false, -- Opcional: mantiene abiertas las carpetas al seguir el archivo
        },

        -- OPCIONAL: Para que se vea aún más compacto
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
        },

        hijack_netrw_behavior = "open_default",
      },
    })
  end,
}