opt = { noremap = true, silent = true} 
local keymap = vim.api.nvim_set_keymap

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

-- NOTE: You can use other key to expand snippet.

-- Expand
keymap("i", "<expr> <C-j>",  "vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'", {})
keymap("s", "<expr> <C-j>",  "vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'", {})

--Expand or jump
keymap("i", "<expr> <C-l>",   "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'", {})
keymap("s", "<expr> <C-l>",   "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'", {})

--ump forward or backward
-- imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
-- smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

-- Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- See https://github.com/hrsh7th/vim-vsnip/pull/50
-- nmap        s   <Plug>(vsnip-select-text)
-- xmap        s   <Plug>(vsnip-select-text)
-- nmap        S   <Plug>(vsnip-cut-text)
-- xmap        S   <Plug>(vsnip-cut-text)

-- If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
-- let g:vsnip_filetypes = {}
-- let g:vsnip_filetypes.javascriptreact = ['javascript']
-- let g:vsnip_filetypes.typescriptreact = ['typescript']






