vim.g.mapleader = " "

vim.keymap.set("n","<leader>pv",vim.cmd.Ex) -- For opening netrw
vim.api.nvim_set_keymap('n','<leader>rh',':let @/ = ""<CR>', { noremap = true, silent = true }) -- For Clearing Highlights
vim.api.nvim_set_keymap('n', '<leader>y','"+y', { noremap = true, silent = true }) -- Global Copy into clipboard
vim.api.nvim_set_keymap('n', '<leader>p','"+p', { noremap = true, silent = true }) -- Global Paste into clipboard
