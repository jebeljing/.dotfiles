-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>ss", "<C-w>x") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("i", "<up>", "<nop>")
keymap.set("i", "<down>", "<nop>")
keymap.set("i", "<left>", "<nop>")
keymap.set("i", "<right>", "<nop>")
----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<cr>')
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
-- keymap.set('n', '<leader>m', '<cmd>NvimTreeFindFile<cr>')

-- telescope
-- keymap.set("n", "<Leader>ff", "<CMD>lua require'telescope-config'.project_files()<CR>")
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set('n', '<leader>fr', "<cmd>Telescope oldfiles<CR>") -- list recent files
keymap.set('n', '<leader>fl', "<cmd>Telescope resume<CR>") -- list previous search

-- telescope git commands (not on youtube nvim video)
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- lazygit
keymap.set("n", "<Leader>lg", ":LazyGit<CR>")

-- hop
-- place this in one of your configuration file(s)
-- for hop plugin
keymap.set('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
keymap.set('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
keymap.set('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>")
keymap.set('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>")
keymap.set('', '<leader>hw', ":HopWord<CR>")
keymap.set('', '<leader>hl', ":HopLine<CR>")

-- trouble nvim
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>")
keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>")
keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>")
keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>")
keymap.set("n", "<leader>xr", "<cmd>Trouble lsp_references<cr>")

-- vim-test
keymap.set("n", "<Leader>tn", ":TestNearest<CR>")
keymap.set("n", "<Leader>tf", ":TestFile<CR>")
keymap.set("n", "<Leader>tl", ":TestLast<CR>")
keymap.set("n", "<Leader>tg", ":TestVisit<CR>")

-- toggle-term
-- keymap.set("n", "<Leader>tt", ":ToggleTerm direction=float<CR>")

-- Transparent
keymap.set("n", "<Leader>tr", ":TransparentToggle<CR>")
