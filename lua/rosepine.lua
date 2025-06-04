return {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "moon",
            highlight_groups = {
                Normal = { bg = "#000000" },
                NormalNC = { bg = "#000000" },
                NormalFloat = { bg = "#000000" },
                FloatBorder = { bg = "#000000" },
            },
        })
        vim.cmd("colorscheme rose-pine")
    end
}
