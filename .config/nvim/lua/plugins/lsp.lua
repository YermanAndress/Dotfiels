return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp", -- Necesario para las capabilities
  },
  config = function()
    require("mason").setup()

    -- 1. Definimos las capacidades del autocompletado una sola vez
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls", "pyright", "bashls", "yamlls", "jsonls",
        "ts_ls", "html", "cssls", "jdtls", "stsll",
      },
      
      handlers = {
        -- 2. Configuración por defecto para todos los servidores
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,
        
        -- 3. Configuración específica para Java
        ["jdtls"] = function()
          require("lspconfig").jdtls.setup({
            capabilities = capabilities,
            -- Aquí puedes añadir configuraciones específicas de Java más adelante
          })
        end,

        -- 4. Configuración específica para Spring Boot (Importante)
        ["stsll"] = function()
          require("lspconfig").stsll.setup({
            capabilities = capabilities,
          })
        end,
      },
    })

    -- 5. Atajos de teclado cuando el LSP se conecta
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        local map = vim.keymap.set
        map("n", "gd", vim.lsp.buf.definition, opts)
        map("n", "K", vim.lsp.buf.hover, opts)
        map("n", "gi", vim.lsp.buf.implementation, opts)
        map("n", "<leader>rn", vim.lsp.buf.rename, opts)
        map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        -- Sugerencia: añadir un atajo para ver errores flotantes
        map("n", "<leader>e", vim.diagnostic.open_float, opts)
      end,
    })
  end,
}