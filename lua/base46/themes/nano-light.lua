-- Credits to original theme https://github.com/rougier/nano-theme
-- This is a modified version of it

---@type Base46Table
local M = {}

local nc = {
  nano_foreground_color = "#37474F",
  nano_background_color = "#FFFFFF",
  nano_highlight_color = "#FAFAFA",
  nano_subtle_color = "#ECEFF1",
  nano_faded_color = "#90A4AE",
  nano_salient_color = "#673AB7",
  nano_strong_color = "#263238",
  nano_popout_color = "#FFAB91",
  nano_critical_color = "#FF6F00",
}

local n = {
  nano_foreground = { fg = nc.nano_foreground_color },
  nano_background = { fg = nc.nano_background_color },
  nano_highlight = { fg = nc.nano_highlight_color },
  nano_subtle = { fg = nc.nano_subtle_color },
  nano_faded = { fg = nc.nano_faded_color },
  nano_salient = { fg = nc.nano_salient_color },
  nano_strong = { fg = nc.nano_strong_color, bold = true },
  nano_popout = { fg = nc.nano_popout_color },
  nano_critical = { fg = nc.nano_critical_color },
}

M.base_30 = {
  white = "#37474F",
  darker_black = "#f7f7f7",
  black = "#FFFfff", --  nvim bg
  black2 = "#ECEFF1",
  one_bg = "#ebebeb", -- real bg of onedark
  one_bg2 = "#e0e0e0",
  one_bg3 = "#d4d4d4",
  grey = "#c4c4c4",
  grey_fg = "#b5b5b5",
  grey_fg2 = "#a3a3a3",
  light_grey = "#848484",
  light_grey2 = "#666666",
  red = "#EF5350",
  tintred = "#BF616A",
  baby_pink = "#b55dc4",
  pink = "#AB47BC",
  line = "#e0e0e0", -- for lines like vertsplit
  green = "#7f946d",
  vibrant_green = "#75c279",
  nord_blue = "#5d748b",
  blue = "#42A5F5",
  yellow = "#d0b22b",
  sun = "#E2C12F",
  purple = "#673AB7",
  dark_purple = "#673AB7",
  teal = "#008080",
  orange = "#FF6F00",
  cream = "#e09680",
  clay = "#D08770",
  cyan = "#26C6DA",
  statusline_bg = "#ECEFF1",
  lightbg = "#e0e0e0",
  pmenu_bg = "#673AB7",
  folder_bg = "#4C566A",
  tintblack = "#4C566A",
  test = "#474747",
}

M.base_16 = {
  base00 = "#FFFFFF",
  base01 = "#E0E0E0",
  base02 = "#C1C1C1",
  base03 = "#A3A3A3",
  base04 = "#848484",
  base05 = "#666666",
  base06 = "#474747",
  base07 = "#282828",
  base08 = nc.nano_foreground_color,
  base09 = nc.nano_faded_color,
  base0A = nc.nano_foreground_color,
  base0B = nc.nano_faded_color,
  base0C = nc.nano_foreground_color,
  base0D = nc.nano_strong_color,
  base0E = nc.nano_foreground_color,
  base0F = nc.nano_foreground_color,
}

M.polish_hl = {
  treesitter = {
    -- Misc --------------------------------------------------------------------------------

    ["@comment"] = { link = "Comment" },
    ["@define"] = { link = "Define" },
    ["@error"] = { link = "Error" },
    ["@operator"] = { link = "Operator" },
    ["@preproc"] = { link = "PreProc" },

    -- Punctuation -------------------------------------------------------------------------

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Special" },

    -- Literals ----------------------------------------------------------------------------

    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@float"] = { link = "Float" },
    ["@number"] = { link = "Number" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { link = "String" },
    ["@string.regex"] = { link = "String" },
    ["@string.special"] = { link = "Special" },

    -- Functions ---------------------------------------------------------------------------

    ["@constructor"] = n.nano_salient,
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Function" },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },
    ["@parameter"] = n.nano_forground,

    -- Keywords ----------------------------------------------------------------------------

    ["@conditional"] = { link = "Conditional" },
    ["@exception"] = { link = "Exception" },
    ["@include"] = { link = "Include" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.export"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = n.nano_foreground,
    ["@keyword.return"] = { link = "Keyword" },
    ["@label"] = { link = "Label" },
    ["@repeat"] = { link = "Repeat" },

    -- Types -------------------------------------------------------------------------------

    ["@attribute"] = { link = "Constant" },
    ["@field"] = n.nano_foreground,
    ["@property"] = n.nano_foreground,
    ["@storageclass"] = { link = "StorageClass" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Type" },
    ["@type.qualifier"] = { link = "Keyword" },

    -- Identifiers -------------------------------------------------------------------------

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "Macro" },
    ["@namespace"] = n.nano_strong,
    ["@symbol"] = n.nano_salient,
    ["@variable"] = n.nano_foreground,
    ["@variable.builtin"] = n.nano_foreground,

    -- Text --------------------------------------------------------------------------------

    ["@text"] = { link = "String" },
    ["@text.danger"] = n.nano_critical,
    ["@text.diff.add"] = { link = "diffAdded" },
    ["@text.diff.delete"] = { link = "diffRemoved" },
    ["@text.emphasis"] = { fg = n.nano_faded_color, italic = true },
    ["@text.environment"] = n.nano_salient,
    ["@text.environment.name"] = n.nano_faded,
    ["@text.literal"] = n.nano_salient,
    ["@text.math"] = n.nano_salient,
    ["@text.note"] = { link = "String" },
    ["@text.reference"] = { link = "Tag" },
    ["@text.strike"] = { fg = nc.nano_faded_color, strikethrough = true },
    ["@text.strong"] = n.nano_strong,
    ["@text.title"] = { fg = nc.nano_salient_color, bold = true },
    ["@text.todo"] = n.nano_salient,
    ["@text.todo.checked"] = n.nano_faded,
    ["@text.todo.unchecked"] = n.nano_salient,
    ["@text.underline"] = { link = "Underline" }, -- underlined text
    ["@text.uri"] = { fg = nc.nano_salient_color, underline = true },
    ["@text.warning"] = n.nano_popout,

    -- Tags --------------------------------------------------------------------------------

    ["@tag"] = n.nano_faded,
    ["@tag.attribute"] = n.nano_faded,
    ["@tag.delimiter"] = n.nano_faded,

    -- Configurations Specific to Languages ------------------------------------------------

    -- Markdown
    ["@text.title.1.markdown"] = n.nano_strong,
    ["@text.title.2.markdown"] = n.nano_strong,
    ["@text.title.3.markdown"] = n.nano_strong,
    ["@text.title.4.markdown"] = n.nano_strong,
    ["@text.title.5.markdown"] = n.nano_strong,
    ["@text.title.6.markdown"] = n.nano_strong,

    ["@text.title.1.marker.markdown"] = n.nano_strong,
    ["@text.title.2.marker.markdown"] = n.nano_strong,
    ["@text.title.3.marker.markdown"] = n.nano_strong,
    ["@text.title.4.marker.markdown"] = n.nano_strong,
    ["@text.title.5.marker.markdown"] = n.nano_strong,
    ["@text.title.6.marker.markdown"] = n.nano_strong,
  },

  telescope = {
    TelescopeMatching = { fg = M.base_30.purple, bg = M.base_30.one_bg2 },
  },

  defaults = {
    ColorColumn = { bg = nc.nano_highlight_color },
    Conceal = { fg = nc.nano_salient_color, bold = true },
    CurSearch = { bg = nc.nano_subtle_color, bold = true },
    Cursor = { fg = nc.nano_background_color, bg = nc.nano_foreground_color },
    CursorColumn = { fg = nc.nano_foreground_color },
    CursorIM = { fg = nc.nano_background_color, bg = nc.nano_foreground_color },
    CursorLine = { bg = nc.nano_highlight_color },
    CursorLineNr = { fg = nc.nano_foreground_color, bg = nc.nano_background_color },
    Directory = { fg = nc.nano_foreground_color },
    EndOfBuffer = {},
    ErrorMsg = n.nano_critical_color,
    FloatBorder = n.nano_foreground_color,
    FloatTitle = n.nano_strong_color,
    FoldColumn = { bg = nc.nano_background_color },
    Folded = { fg = nc.nano_salient_color, bold = true },
    IncSearch = { bg = nc.nano_subtle_color },
    healthSuccess = { fg = nc.nano_salient_color },
    LineNr = n.nano_faded,
    MatchParen = { bg = nc.nano_subtle_color, bold = true },
    ModeMsg = n.nano_faded,
    MoreMsg = n.nano_foreground,
    MsgSeparator = {},
    NonText = n.nano_subtle,
    Normal = { fg = nc.nano_foreground_color, bg = nc.nano_background_color },
    NormalFloat = { fg = nc.nano_foreground_color, bg = nc.nano_highlight_color },
    NormalNC = { fg = nc.nano_foreground_color, bg = nc.nano_background_color },
    NormalSB = { fg = nc.nano_foreground_color, bg = nc.nano_background_color },
    Pmenu = { fg = nc.nano_foreground_color, bg = nc.nano_highlight_color },
    PmenuSbar = { bg = nc.nano_faded_color },
    PmenuSel = { bg = nc.nano_subtle_color },
    PmenuThumb = { bg = nc.nano_foreground_color },
    Question = n.nano_foreground_color,
    Search = { bg = nc.nano_subtle_color },
    SignColumn = n.nano_faded,
    SignColumnSB = n.nano_faded,
    SpellBad = { sp = nc.nano_critical_color, undercurl = true },
    SpellCap = { sp = nc.nano_saliend_color, undercurl = true },
    SpellLocal = { sp = nc.nano_faded_color, undercurl = true },
    SpellRare = { sp = nc.nano_faded_color, undercurl = true },
    StatusLine = { fg = nc.nano_foreground_color, bg = nc.nano_background_color },
    StatusLineNC = { fg = nc.nano_background_color, bg = nc.nano_background_color },
    Title = n.nano_strong,
    VertSplit = { fg = nc.nano_background_color, bg = nc.nano_background_color },
    Visual = { bg = nc.nano_subtle_color },
    VisualNOS = { bg = nc.nano_subtle_color },
    WarningMsg = n.nano_popout,
    lCursor = { fg = nc.nano_background_color, bg = nc.nano_foreground_color },
  },

  syntax = {
    Bold = { bold = true },
    Boolean = n.nano_salient,
    Character = n.nano_faded,
    Comment = n.nano_faded,
    Conditional = n.nano_salient,
    Constant = n.nano_salient,
    Debug = n.nano_salient,
    Define = n.nano_salient,
    Delimiter = n.nano_foreground,
    Error = n.nano_critical,
    Exception = n.nano_salient,
    Float = { link = "Number" },
    Function = n.nano_strong,
    Identifier = n.nano_foreground,
    Include = n.nano_salient,
    Italic = { italic = true },
    Keyword = n.nano_salient,
    Label = n.nano_salient,
    Macro = n.nano_strong,
    Number = n.nano_salient,
    Operator = n.nano_foreground,
    PreCondit = n.nano_salient,
    PreProc = n.nano_salient,
    Repeat = n.nano_salient,
    Special = n.nano_salient,
    SpecialChar = n.nano_salient,
    SpecialComment = n.nano_faded,
    Statement = n.nano_salient,
    StorageClass = n.nano_salient,
    String = n.nano_faded,
    Structure = n.nano_salient,
    Tag = n.nano_strong,
    Todo = n.nano_salient,
    Type = n.nano_salient,
    Typedef = n.nano_salient,
    Underlined = { underline = true },
    Whitespace = n.nano_subtle,
  },
}

M.type = "light"

M = require("base46").override_theme(M, "nano-light")

return M