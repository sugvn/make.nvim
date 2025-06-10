return
  {
    'stevearc/oil.nvim',
    event="User FilePost",
    cmd="Oil",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
     ---   columns = {"icon","size","mtime"},
    },
    config = function()
      require("oil").setup({
                keymaps = {
                    ["."] = "actions.parent",
                    ["-"] = false, -- disable the default "-" mapping
                },
      })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "oil",
        callback = function()
          vim.keymap.set("n", "q", ":bd<CR>", { buffer = true, silent = true })
          vim.keymap.set("n", "<A-.>", ":bd<CR>", { buffer = true, silent = true })
        end,
      })
    end,
  }

