vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fe",vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>fc",vim.cmd.NvimTreeClose)
vim.api.nvim_set_keymap("n", "<S-Enter>", "moO<Esc>`o", {noremap = true, silent = true})

-- close curr buffer
vim.keymap.set("n", "<leader>d","<Esc>:bd<CR>") 
