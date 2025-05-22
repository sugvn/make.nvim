


vim.g.mapleader=" "
vim.g.maplocalleader="."





--indent--
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.smarttab=true
vim.opt.autoindent=true
vim.opt.smartindent=true


--file--
vim.opt.undofile=true


--buffer--
vim.opt.splitright=true
vim.opt.splitbelow=true


---clipboard--
vim.opt.clipboard = "unnamedplus"


--line number--
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.cursorline=true
vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'NONE', underline = false })
vim.opt.numberwidth=3
vim.opt.signcolumn="no"

--cmd line--
vim.opt.cmdheight = 1
vim.opt.smartcase = true
vim.opt.ignorecase = true



--keymaps--
local map = vim.keymap.set
map('n',';',':')
map("n", "vv", "V", { noremap = true, silent = true })
map("n", "jrn", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
  vim.opt.number = vim.opt.relativenumber:get()
end, { desc = "Toggle relative number" })

map("n", "<leader>n", function()
  vim.opt.relativenumber=false
  vim.opt.number = not vim.opt.number:get()
end, { desc = "Toggle number" })

map('n','gll',vim.diagnostic.open_float)

vim.keymap.set('n','<A-.>',"<CMD>Oil<CR>",{})
