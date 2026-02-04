return {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require('ayu').setup({
        mirage = false,
        overrides = {
          -- 1. Colores Rainbow
          RainbowDelimiterRed = { fg = "#4665ff" },
          RainbowDelimiterYellow = { fg = "#f8ff1f" },
          RainbowDelimiterBlue = { fg = "#bb36d9" },
          RainbowDelimiterOrange = { fg = "#4dff40" },
          RainbowDelimiterGreen = { fg = "#21d398" },
          RainbowDelimiterViolet = { fg = "#f368c7" },
          RainbowDelimiterCyan = { fg = "#b0ddce" },

          -- 2. Números
          Number = { fg = "#9e4eb6", bold = true }, 
          Float = { fg = "#9e4eb6" },

          -- 3. Carpetas (Rojo coral)
          NeoTreeDirectoryIcon = { fg = "#ff5252" },
          NeoTreeDirectoryName = { fg = "#ff5252" },
          NeoTreeRootName = { fg = "#ff5252", bold = true },
          
          -- 4. FIX HTML (Colores limpios)
          ["@tag"] = { fg = "#36a3d9" },
          ["@tag.html"] = { fg = "#36a3d9", nocombine = true },
          ["@tag.builtin.html"] = { fg = "#36a3d9", nocombine = true },
          ["@tag.delimiter.html"] = { fg = "#5c6773", nocombine = true },
          ["@tag.attribute.html"] = { fg = "#ffcc66", nocombine = true  },
          ["@text.html"] = { fg = "#e6e1cf", nocombine = true  },
          ["@keyword.directive.html"] = { fg = "#5c6773", italic = true },
          ["@constant.html"] = { fg = "#5c6773" },
        },
      })
      vim.cmd.colorscheme("ayu-dark")
    end,
}