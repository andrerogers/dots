-- Set neovim leader key
vim.g.mapleader = ' '

-- Setup lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

-- Color Scheme
if vim.fn.has("termguicolors") == 1 then
  vim.o.termguicolors = true
end
vim.o.background = "dark"

require("vim-options")
require("lazy").setup("plugins")
