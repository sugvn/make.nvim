
local palette = {
  base00 = "#000000", -- bg
  base01 = "#403035", -- alt_bg
  base02 = "#333333", -- visual
  base03 = "#505050", -- comment
  base04 = "#83756a", -- type (dimmed fg)
  base05 = "#c1c1c1", -- fg (main text)
  base06 = "#aaaaaa", -- constant/number
  base07 = "#999999", -- keyword/info/light fg

  base08 = "#5f8787", -- diag_red (used in errors, keywords, tags)
  base09 = "#9b99a3", -- operator (semantic orange/brown)
  base0A = "#a29884", -- string
  base0B = "#6e4c4c", -- diag_green (used for success/info)
  base0C = "#888888", -- func (semantic cyan/teal)
  base0D = "#888888", -- also func (for methods/functions)
  base0E = "#999999", -- keyword again (used for macro/decorator)
  base0F = "#5f8787", -- diag_yellow / misc highlight

  -- Optional, helpful named aliases (used in your highlights)
  -- bg       = "#000000",
  -- fg       = "#c1c1c1",
  -- comment  = "#505050",
  -- func     = "#888888",
  -- keyword  = "#999999",
  -- string   = "#a29884",
  -- number   = "#aaaaaa",
  -- operator = "#9b99a3",
  -- type     = "#83756a",
  -- property = "#c1c1c1",
  -- visual   = "#333333",
}

return palette
