opt = { noremap = true, silent = true} 

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- vim.keymap.set('n', '<leader>ff', "<cmd>Telescope git_files<cr>", { noremap = true })
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { noremap = true })
vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>ff", "<CMD>lua require'telescope-config'.project_files()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fr', "<cmd>Telescope oldfiles<CR>", opt)
--vim.api.nvim_set_keymap("n", "<Leader><Space>", "<CMD>lua require'telescope-config'.project_files()<CR>", {noremap = true, silent = true})

vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeFindFileToggle<cr>', { noremap = true })

vim.keymap.set("i", "<up>", "<nop>", opt)
vim.keymap.set("i", "<down>", "<nop>", opt)
vim.keymap.set("i", "<left>", "<nop>", opt)
vim.keymap.set("i", "<right>", "<nop>", opt)

vim.keymap.set("n", "<Leader>lg", ":LazyGit<CR>", opt)

vim.keymap.set("n", "<Leader>t", ":TestNearest<CR>", opt)
vim.keymap.set("n", "<Leader>T", ":TestFile<CR>", opt)
vim.keymap.set("n", "<Leader>a", ":TestSuite<CR>", opt)
vim.keymap.set("n", "<Leader>l", ":TestLast<CR>", opt)
vim.keymap.set("n", "<Leader>g", ":TestVisit<CR>", opt)

-- trouble nvim
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)
-- place this in one of your configuration file(s)
-- for hop plugin
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
vim.api.nvim_set_keymap('', '<leader>hw', ":HopWord<CR>", opt)
vim.api.nvim_set_keymap('', '<leader>hl', ":HopLine<CR>", opt)
