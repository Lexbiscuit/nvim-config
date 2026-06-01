local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "x", '"_x')
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit File" })
keymap("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })
