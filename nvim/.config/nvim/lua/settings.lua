local o = vim.opt
-- https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
-- Indention Option
o.autoindent = true
o.expandtab = true
----set filetype indent on
--o.shiftround = true
o.shiftwidth = 2
--o.smarttab = true
o.tabstop = 2
--
---- Search Options
o.hlsearch = true
o.ignorecase = true
o.incsearch = true
--o.smartcase = true

vim.cmd "colorscheme gruvbox"
