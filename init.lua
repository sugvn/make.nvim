
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

dofile("/home/sugan/.config/nvim/lua/cached/defaults")
-- load plugins
require("lazy").setup({
  { import = "plugins" },
}, lazy_config)

require "configs.options"
require "configs.autocmds"
require "configs.statusline"
--dofile("/home/sugan/.config/nvim/lua/cached/stl")
vim.schedule(function()
  require "configs.mappings"
  require "configs.lsp"
end)
