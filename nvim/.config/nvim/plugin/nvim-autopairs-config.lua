local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

require("nvim-autopairs").setup ({
   disable_filetype = { "TelescopePrompt" },
   disable_in_macro = false,  -- disable when recording or executing a macro,
   disable_in_visualblock = false, -- disable when insert after visual block mode
  --  ignored_next_char = [=[[%w%%%'%[%"%.]]=]
   ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
   enable_moveright = true,
   enable_afterquote = true,  -- add bracket pairs after quote
   enable_check_bracket_line = false,  --- check bracket in same line
   enable_bracket_in_quote = true, --
   enable_abbr = false, -- trigger abbreviation
   break_undo = true, -- switch for basic rule break undo sequence
   check_ts = false,
   map_cr = true,
   map_bs = true,  -- map the <BS> key
   map_c_h = false,  -- Map the <C-h> key to delete a pair
   map_c_w = false,-- map <c-w> to delete a pair if possible
})


npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))

require("nvim-treesitter.configs").setup {
  endwise = {
    enable = true,
  },
}
