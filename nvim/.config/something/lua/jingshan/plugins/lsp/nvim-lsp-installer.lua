-- import nvim-lsp-installer safely
local status, nvimlspinstaller = pcall(require, "nvim-lsp-installer")
if not status then
  return
end

nvimlspinstaller.setup()
