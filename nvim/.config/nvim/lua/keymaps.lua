opt = { noremap = true, silent = true} 

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- vim.keymap.set('n', '<leader>ff', "<cmd>Telescope git_files<cr>", { noremap = true })
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { noremap = true })
vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>ff", "<CMD>lua require'telescope-config'.project_files()<CR>", {noremap = true, silent = true})
--vim.api.nvim_set_keymap("n", "<Leader><Space>", "<CMD>lua require'telescope-config'.project_files()<CR>", {noremap = true, silent = true})

vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeToggle<cr>', { noremap = true })

vim.keymap.set("i", "<up>", "<nop>", opt)
vim.keymap.set("i", "<down>", "<nop>", opt)
vim.keymap.set("i", "<left>", "<nop>", opt)
vim.keymap.set("i", "<right>", "<nop>", opt)

vim.keymap.set("n", "<Leader>lg", ":LazyGit<CR>", opt)
