return {
    "metalelf0/black-metal-theme-neovim",
      lazy = false,
      priority = 1000,
      config = function()
        require("black-metal").setup({
          theme = "taake",
          -- Can be one of: 'light' | 'dark', or set via vim.o.background
          variant = "dark",
          -- Use an alternate, lighter bg
          alt_bg = false,
          -- If true, docstrings will be highlighted like strings, otherwise they will be
          -- highlighted like comments. Note, behavior is dependent on the language server.
          colored_docstrings = true,
          -- If true, highlights the {sign,fold} column the same as cursorline
          cursorline_gutter = true,
          -- If true, highlights the gutter darker than the bg
          dark_gutter = true,
          -- if true favor treesitter highlights over semantic highlights
          favor_treesitter_hl = true,
          -- Don't set background of floating windows. Recommended for when using floating
          -- windows with borders.
          plain_float = false,
          -- Show the end-of-buffer character
          show_eob = true,
          -- If true, enable the vim terminal colors
          term_colors = true,
          -- Keymap (in normal mode) to toggle between light and dark variants.
          toggle_variant_key = nil,
          -- Don't set background
          transparent = false,

          -----DIAGNOSTICS and CODE STYLE-----
          --
          diagnostics = {
            darker = true, -- Darker colors for diagnostic
            undercurl = true, -- Use undercurl for diagnostics
            background = false, -- Use background color for virtual text
          },
          -- The following table accepts values the same as the `gui` option for normal
          -- highlights. For example, `bold`, `italic`, `underline`, `none`.
          code_style = {
            comments = "italic",
            conditionals = "none",
            functions = "none",
            keywords = "none",
            headings = "bold", -- Markdown headings
            operators = "none",
            keyword_return = "none",
            strings = "none",
            variables = "none",
          },

          -----PLUGINS-----
          --
          -- The following options allow for more control over some plugin appearances.
          plugin = {
            cmp = { -- works for nvim.cmp and blink.nvim
              -- Don't highlight lsp-kind items. Only the current selection will be highlighted.
              plain = false,
              -- Reverse lsp-kind items' highlights in blink/cmp menu.
              reverse = false,
            },
          },

          -- CUSTOM HIGHLIGHTS --
          --
          -- Override default colors
          colors = {},
          -- Override highlight groups
          highlights = {},
        })
        -- Convenience function that simply calls `:colorscheme <theme>` with the theme
        -- specified in your config.
        require("black-metal").load()
end
}

