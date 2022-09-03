local o = vim.o
local opt = vim.opt
local wo = vim.wo
-- https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
-- Indention Option

opt.relativenumber = true
opt.number = true

opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.expandtab=true
opt.shiftround=false
opt.smarttab=true
opt.smartindent=true
opt.autoindent=true

o.splitright=true
o.splitbelow=true

opt.hlsearch=true
opt.incsearch=true
opt.ignorecase=true
--opt.linespace=1
opt.colorcolumn="120"

opt.showcmd=true
opt.ruler=true

opt.cursorline=true
opt.autoread=true

opt.timeoutlen = 500

o.hidden=true
wo.wrap=true
