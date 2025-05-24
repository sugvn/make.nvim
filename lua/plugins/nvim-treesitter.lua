return {
    "nvim-treesitter/nvim-treesitter",
   --- event="VeryLazy",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      dofile("/home/sugan/.config/nvim/lua/colors/syntax")
      dofile("/home/sugan/.config/nvim/lua/colors/treesitter")
      configs.setup({
          ensure_installed = { "c", "lua","css","javascript", "html","dart" },
          sync_install = false,
          highlight = { enable = true,use_languagetree=true},
          indent = { enable = true },
        })
    end
 }
