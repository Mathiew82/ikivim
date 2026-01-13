vim.g.mapleader = " "                                 -- Define Space como leader key

vim.keymap.set("n", "<leader>,", vim.cmd.bfirst)      -- Foco en la primera buffer
vim.keymap.set("n", "<leader>.", vim.cmd.blast)       -- Foco en la ultima buffer
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)           -- Foco en el siguiente buffer
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)     -- Foco en el anterior buffer
vim.keymap.set("n", "<leader>o", "o<Esc>k")           -- Agrega una linea abajo manteniendose
vim.keymap.set("n", "<leader>x", vim.cmd.bdelete)     -- Cierra el buffer que tiene el foco

vim.keymap.set("n", "<leader>a", "ggVG")              -- Selecciona todo el archivo
vim.keymap.set("v", "<leader>y", '"+y')               -- Copia la seleccion en el clipboard del sistema
vim.keymap.set("n", "<leader>yy", '"+yy')             -- Copia la linea entera en el clipboard del sistema
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')      -- Borra sin perder clipboard

vim.keymap.set("n", "<leader>dy", function()
  vim.diagnostic.open_float()
end)                                                  -- Muestra errores bajo el cursor 

vim.keymap.set("n", "<leader>f", "/")                 -- Abre la búsqueda hacia delante
-- Trabajar con la busqueda
  -- n = siguiente
  -- N = anterior
  -- <ESC> = salir de la busqueda
  -- :noh = quitar el resaltado

vim.opt.foldmethod = "syntax" -- Crea pliegues automáticamente usando la sintaxis del lenguaje
vim.opt.foldlevelstart = 99   -- Al abrir un archivo, abre todos los pliegues
-- Trabajar con pliegues
  -- za = abrir/cerrar manual
  -- zR = abrir todo
  -- zM = cerrar todo
