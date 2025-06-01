
local map = vim.keymap.set

--keymaps--
map('n',';',':')
vim.api.nvim_create_user_command('Q', 'q!', {})
map("n", "vv", "V", { noremap = true, silent = true })
map("n", "<leader>rn", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
  vim.opt.number = vim.opt.relativenumber:get()
end, { desc = "Toggle relative number" })

map("n", "<leader>n", function()
  vim.opt.relativenumber=false
  vim.opt.number = not vim.opt.number:get()
end, { desc = "Toggle number" })

map('n','gll',vim.diagnostic.open_float)

vim.keymap.set('n','<A-.>',"<CMD>Oil<CR>",{})
