-- Set leader key to space
vim.g.mapleader = " "  -- Spacebar as leader key

-- Indításkor ellenőrzi, hogy a lazy.nvim telepítve van-e
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Pluginok betöltése
require("lazy").setup("plugins")
require("lsp")

vim.cmd("colorscheme tokyonight-day")
vim.filetype.add({ extension = { razor = "razor" } })

require("keymaps")
print("Keymaps file loaded!")

