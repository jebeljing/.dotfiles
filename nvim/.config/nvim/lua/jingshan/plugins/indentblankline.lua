-- import indent-blackline plugin safely
local setup, indentblackline = pcall(require, "indent_blankline")
if not setup then
  return
end

indentblackline.setup({
  show_current_context = true,
  show_current_context_start = true
})
