-- ------------------------------
-- Global Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>,,", "<C-^>", { desc = "Jump to alternate file" })
vim.keymap.set("n", "<leader>,", vim.cmd.bfirst, { desc = "First buffer" })
vim.keymap.set("n", "<leader>.", vim.cmd.blast, { desc = "Last buffer" })
vim.keymap.set("n", "<Tab>", vim.cmd.bnext, { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious, { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>ls", vim.cmd.ls, { desc = "List buffers" })
vim.keymap.set("n", "<leader>o", "o<Esc>k", { desc = "Insert empty line below" })
vim.keymap.set("n", "<leader>x", vim.cmd.bdelete, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire file" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy selection" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy line" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete (keep clipboard)" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left (keep selection)" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right (keep selection)" })
vim.keymap.set("n", "<leader>dy", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "<leader>f", "/", { desc = "Search forward" })

-- ------------------------------
-- Telescope Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep (search text in project)" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
-- ------------------------------
-- Oil Keymaps
-- ------------------------------
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Oil: open parent directory" })
-- Ctrl + C to close Oil panel
