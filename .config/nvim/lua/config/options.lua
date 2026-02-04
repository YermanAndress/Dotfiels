-- OPTIONS ---------------------------------------------

local opt = vim.opt


if vim.g.neovide then
    -- Fuente (Asegúrate de tener instalada una Nerd Font)
    vim.opt.guifont = "FiraCode Nerd Font:h13"

    -- Animaciones (El corazón de Neovide)
    vim.g.neovide_cursor_animation_length = 0.13  -- Velocidad del cursor (segundos)
    vim.g.neovide_cursor_trail_size = 0.8         -- Tamaño de la estela
    vim.g.neovide_cursor_vfx_mode = "railgun"    -- ¡Efecto de partículas al escribir! (opcional)
    
end

---------------------------------------------------------
-- BASICS
---------------------------------------------------------
opt.number = true             -- mostrar número de línea
opt.relativenumber = false    -- números relativos
opt.mouse = "a"               -- habilitar mouse
opt.clipboard = "unnamedplus" -- usar portapapeles del sistema
opt.swapfile = false          -- desactivar swapfile
opt.undofile = true           -- historial de cambios persistente


---------------------------------------------------------
-- Wrap
---------------------------------------------------------
opt.wrap = true          -- Activa el salto de línea visual
opt.linebreak = true     -- Corta por palabras completas, no a mitad de una letra
opt.breakindent = true   -- Mantiene la sangría (indentación) en la línea saltada

---------------------------------------------------------
-- INDENTACIÓN
---------------------------------------------------------
opt.expandtab = true         -- convertir TAB en espacios
opt.shiftwidth = 2           -- tamaño de indentación
opt.tabstop = 2              -- tamaño del TAB
opt.smartindent = true       -- indentación inteligente

---------------------------------------------------------
-- BÚSQUEDA
---------------------------------------------------------
opt.ignorecase = true        -- ignora mayúsculas al buscar...
opt.smartcase = true         -- ...a menos que la búsqueda tenga mayúsculas
opt.incsearch = true         -- búsqueda incremental
opt.hlsearch = true          -- resalta coincidencias

---------------------------------------------------------
-- APARIENCIA
---------------------------------------------------------
opt.termguicolors = true     -- colores 24-bit
opt.signcolumn = "yes"       -- columna de signos siempre visible
opt.cursorline = true        -- resaltar línea actual
opt.scrolloff = 10           -- margen al mover cursor

---------------------------------------------------------
-- ARCHIVOS / PATH
---------------------------------------------------------
opt.confirm = true           -- confirmar guardado en buffers modificados
opt.splitright = true        -- splits verticales a la derecha
opt.splitbelow = true        -- splits horizontales abajo

---------------------------------------------------------
-- RENDIMIENTO
---------------------------------------------------------
opt.updatetime = 200         -- refresco rápido
opt.timeoutlen = 400         -- tiempo para mappings
opt.lazyredraw = false        -- evita redibujar innecesario
