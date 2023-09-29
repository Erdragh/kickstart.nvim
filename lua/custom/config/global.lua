vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.sw = 2
vim.o.ts = 2
vim.o.et = true
vim.o.autoindent = true

vim.cmd("set number")
vim.cmd("set relativenumber")

local isUnix = vim.fn.has("macunix") == 1
local shellEnv = os.getenv("SHELL")

if (not isUnix and shellEnv == nil) then
  vim.o.shell = "powershell.exe"
  vim.o.shellxquote = nil
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
  vim.o.shellquote = ""
  vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
  vim.o.shellredir = "| Out-File -Encoding UTF8 %s"
end
