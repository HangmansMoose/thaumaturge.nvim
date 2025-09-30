--local bufferline = require 'my-theme.integrations.bufferline'
--local cmp = require 'my-theme.integrations.cmp'
local colorscheme = require 'thaumaturge.colorscheme'
local config = require 'thaumaturge.config'
local utils = require 'thaumaturge.utils'
local theme = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = colorscheme.main_bg
  vim.g.terminal_color_1 = colorscheme.syntaxError
  vim.g.terminal_color_2 = colorscheme.successText
  vim.g.terminal_color_3 = colorscheme.warningEmphasis
  vim.g.terminal_color_4 = colorscheme.burlywood3
  vim.g.terminal_color_5 = colorscheme.dark_goldenrod
  vim.g.terminal_color_6 = colorscheme.linkText
  vim.g.terminal_color_7 = colorscheme.mainText
  vim.g.terminal_color_8 = colorscheme.inactiveText
  vim.g.terminal_color_9 = colorscheme.errorText
  vim.g.terminal_color_10 = colorscheme.olive_drab
  vim.g.terminal_color_11 = colorscheme.warningText
  vim.g.terminal_color_12 = colorscheme.syntaxOperator
  vim.g.terminal_color_13 = colorscheme.syntaxError
  vim.g.terminal_color_14 = colorscheme.olive_drab
  vim.g.terminal_color_15 = colorscheme.gray50
  vim.g.terminal_color_background = colorscheme.main_bg
  vim.g.terminal_color_foreground = colorscheme.mainText
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colorscheme.main_bg
  local diff_add =
    utils.shade(colorscheme.successText, 0.5, colorscheme.main_bg)
  local diff_delete =
    utils.shade(colorscheme.syntaxError, 0.5, colorscheme.main_bg)
  local diff_change =
    utils.shade(colorscheme.burlywood3, 0.5, colorscheme.main_bg)
  local diff_text =
    utils.shade(colorscheme.warningEmphasis, 0.5, colorscheme.main_bg)

  local groups = {
    -- base
    Normal = { fg = colorscheme.fg, bg = colorscheme.main_bg },
    NormalNC = { line = 'Normal' },
    LineNr = { fg = colorscheme.fg },
    Cursor = { fg = colorscheme.cursor_foreground, bg = colorscheme.cursor },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colorscheme.cursor_line },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colorscheme.burlywood3 },
    --DiffAdd = { bg = bg, fg = diff_add },
    --DiffChange = { bg = bg, fg = diff_change },
    --DiffDelete = { bg = bg, fg = diff_delete },
    --DiffText = { bg = bg, fg = diff_text },
    EndOfBuffer = { fg = colorscheme.dark_goldenrod },
    TermCursor = { link = 'Cursor' },
    TermCursorNC = { link = 'Cursor' },
    ErrorMsg = { fg = colorscheme.error_red },
    VertSplit = { fg = colorscheme.windowBorder, bg = bg },
    Winseparator = { link = 'VertSplit' },
    SignColumn = { link = 'Normal' },
    Folded = { fg = colorscheme.mainText, bg = colorscheme.popupBackground },
    FoldColumn = { link = 'SignColumn' },
    IncSearch = {
      bg = utils.mix(
        colorscheme.burlywood3,
        colorscheme.main_bg,
        math.abs(0.30)
      ),
      fg = colorscheme.main_bg,
    },
    Substitute = { link = 'IncSearch' },
    CursorLineNr = { fg = colorscheme.gray50 },
    MatchParen = { fg = colorscheme.syntaxError, bg = bg },
    ModeMsg = { link = 'Normal' },
    MsgArea = { link = 'Normal' },
    -- MsgSeparator = {},
    MoreMsg = { fg = colorscheme.burlywood3 },
    NonText = { fg = utils.shade(colorscheme.main_bg, 0.30) },
    NormalFloat = { bg = colorscheme.floating_bg },
    Pmenu = { link = 'NormalFloat' },
    PmenuSel = { bg = colorscheme.menuOptionBackground },
    PmenuSbar = {
      bg = utils.shade(
        colorscheme.burlywood3,
        0.5,
        colorscheme.main_bg
      ),
    },
    PmenuThumb = { bg = utils.shade(colorscheme.main_bg, 0.20) },
    Question = { fg = colorscheme.burlywood3 },
    QuickFixLine = { fg = colorscheme.burlywood3 },
    SpecialKey = { fg = colorscheme.syntaxOperator },
    StatusLine = { fg = colorscheme.mainText, bg = bg },
    StatusLineNC = {
      fg = colorscheme.inactiveText,
      bg = colorscheme.sidebarBackground,
    },
    TabLine = {
      bg = colorscheme.sidebarBackground,
      fg = colorscheme.inactiveText,
    },
    TabLineFill = { link = 'TabLine' },
    Search = { bg = utils.shade(colorscheme.olive_drab, 0.40, colorscheme.bg) },
    Title = { fg = colorscheme.burlywood3 },
    Visual = {
      bg = utils.shade(
        colorscheme.burlywood3,
        0.40,
        colorscheme.main_bg
      ),
    },
    VisualNOS = { link = 'Visual' },
    WarningMsg = { fg = colorscheme.warningText },
    Whitespace = { fg = colorscheme.syntaxOperator },
    WildMenu = { bg = colorscheme.menuOptionBackground },
    Comment = { fg = colorscheme.gray50 },

    Constant = { fg = colorscheme.macro_purple },
    String = { fg = colorscheme.olive_drab },
    Character = { fg = colorscheme.olive_drab },
    Number = { fg = colorscheme.day_nine_yellow },
    Boolean = { fg = colorscheme.burlywood3 },
    Float = { link = 'Number' },

    Identifier = { fg = colorscheme.mainText },
    Function = { fg = colorscheme.blue },
    Method = { fg = colorscheme.zerg_purple },
    Property = { fg = colorscheme.burlywood3 },
    Field = { link = 'Property' },
    Parameter = { fg = colorscheme.mainText },
    Statement = { fg = colorscheme.syntaxError },
    Conditional = { fg = colorscheme.syntaxError },
    -- Repeat = {},
    Label = { fg = colorscheme.burlywood3 },
    Operator = { fg = colorscheme.syntaxError },
    Keyword = { link = 'Statement', italic = config.italics.keywords or false },
    Exception = { fg = colorscheme.syntaxError },

    PreProc = { link = 'Keyword' },
    -- Include = {},
    Define = { fg = colorscheme.dark_goldenrod },
    Macro = { link = 'Define' },
    PreCondit = { fg = colorscheme.syntaxError },

    Type = { fg = colorscheme.burlywood3 },
    Struct = { link = 'Type' },
    Class = { link = 'Type' },

    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},

    Attribute = { link = 'Character' },
    Punctuation = { fg = colorscheme.syntaxOperator },
    Special = { fg = colorscheme.syntaxOperator },

    SpecialChar = { fg = colorscheme.syntaxError },
    Tag = { fg = colorscheme.olive_drab },
    Delimiter = { fg = colorscheme.syntaxOperator },
    -- SpecialComment = {},
    Debug = { fg = colorscheme.specialKeyword },

    Underlined = { underline = false },
    Bold = { bold = false },
    Italic = { italic = false },
    Ignore = { fg = colorscheme.main_bg },
    Error = { link = 'ErrorMsg' },
    Todo = { fg = '#ff0000', bold = true },

    -- LspReferenceText = {},
    -- LspReferenceRead = {},
    -- LspReferenceWrite = {},
    -- LspCodeLens = {},
    -- LspCodeLensSeparator = {},
    -- LspSignatureActiveParameter = {},

    DiagnosticError = { link = 'Error' },
    DiagnosticWarn = { link = 'WarningMsg' },
    DiagnosticInfo = { fg = colorscheme.burlywood3 },
    DiagnosticHint = { fg = colorscheme.warningEmphasis },
    DiagnosticVirtualTextError = { link = 'DiagnosticError' },
    DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },
    DiagnosticUnderlineError = { undercurl = true, link = 'DiagnosticError' },
    DiagnosticUnderlineWarn = { undercurl = true, link = 'DiagnosticWarn' },
    DiagnosticUnderlineInfo = { undercurl = true, link = 'DiagnosticInfo' },
    DiagnosticUnderlineHint = { undercurl = true, link = 'DiagnosticHint' },
    -- DiagnosticFloatingError = {},
    -- DiagnosticFloatingWarn = {},
    -- DiagnosticFloatingInfo = {},
    -- DiagnosticFloatingHint = {},
    -- DiagnosticSignError = {},
    -- DiagnosticSignWarn = {},
    -- DiagnosticSignInfo = {},
    -- DiagnosticSignHint = {},

    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    ['@text'] = { fg = colorscheme.mainText },
    ['@texcolorscheme.literal'] = { link = 'Property' },
    -- ["@texcolorscheme.reference"] = {},
    ['@texcolorscheme.strong'] = { link = 'Bold' },
    ['@texcolorscheme.italic'] = { link = 'Italic' },
    ['@texcolorscheme.title'] = { link = 'Keyword' },
    ['@texcolorscheme.uri'] = {
      fg = colorscheme.burlywood3,
      sp = colorscheme.burlywood3,
      underline = true,
    },
    ['@texcolorscheme.underline'] = { link = 'Underlined' },
    ['@symbol'] = { fg = colorscheme.syntaxOperator },
    ['@texcolorscheme.todo'] = { link = 'Todo' },
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Punctuation' },
    ['@punctuation.bracket'] = { fg = colorscheme.warningEmphasis },
    ['@punctuation.delimiter'] = { fg = colorscheme.syntaxError },
    ['@punctuation.terminator.statement'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { fg = colorscheme.syntaxError },
    ['@punctuation.separator.keyvalue'] = { fg = colorscheme.syntaxError },

    ['@texcolorscheme.diff.add'] = { fg = colorscheme.successText },
    ['@texcolorscheme.diff.delete'] = { fg = colorscheme.errorText },

    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { fg = colorscheme.burlywood3 },
    ['@constancolorscheme.builtin'] = { link = 'Keyword' },
    -- ["@constancolorscheme.macro"] = {},
    -- ["@define"] = {},
    -- ["@macro"] = {},
    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = utils.shade(colorscheme.olive_drab, 0.45) },
    ['@string.special'] = { fg = utils.shade(colorscheme.burlywood3, 0.45) },
    -- ["@character"] = {},
    -- ["@character.special"] = {},
    ['@number'] = { link = 'Number' },
    ['@boolean'] = { link = 'Boolean' },
    -- ["@float"] = {},
    ['@function'] = {
      link = 'Function',
      italic = config.italics.functions or false,
    },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    -- ["@function.macro"] = {},
    ['@parameter'] = { link = 'Parameter' },
    ['@method'] = { link = 'Function' },
    ['@field'] = { link = 'Property' },
    ['@property'] = { link = 'Property' },
    ['@constructor'] = { fg = colorscheme.burlywood3 },
    -- ["@conditional"] = {},
    -- ["@repeat"] = {},
    ['@label'] = { link = 'Label' },
    ['@operator'] = { link = 'Operator' },
    ['@exception'] = { link = 'Exception' },
    ['@variable'] = {
      fg = colorscheme.burlywood3,
      italic = config.italics.variables or false,
    },
    ['@variable.builtin'] = { fg = colorscheme.burlywood3 },
    ['@variable.member'] = { fg = colorscheme.mainText },
    ['@variable.parameter'] = {
      fg = colorscheme.mainText,
      italic = config.italics.variables or false,
    },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { fg = colorscheme.mainText },
    ['@type.builtin'] = { fg = colorscheme.burlywood3 },
    ['@type.qualifier'] = { fg = colorscheme.burlywood3 },
    ['@keyword'] = { link = 'Keyword' },
    -- ["@storageclass"] = {},
    -- ["@structure"] = {},
    ['@namespace'] = { link = 'Type' },
    ['@annotation'] = { link = 'Label' },
    -- ["@include"] = {},
    -- ["@preproc"] = {},
    ['@debug'] = { fg = colorscheme.specialKeyword },
    ['@tag'] = { link = 'Tag' },
    ['@tag.builtin'] = { link = 'Tag' },
    ['@tag.delimiter'] = { fg = colorscheme.syntaxOperator },
    ['@tag.attribute'] = { fg = colorscheme.dark_goldenrod },
    ['@tag.jsx.element'] = { fg = colorscheme.burlywood3 },
    ['@attribute'] = { fg = colorscheme.dark_goldenrod },
    ['@error'] = { link = 'Error' },
    ['@warning'] = { link = 'WarningMsg' },
    ['@info'] = { fg = colorscheme.burlywood3 },

    -- Specific languages
    -- overrides
    ['@label.json'] = { fg = colorscheme.property }, -- For json
    ['@label.help'] = { link = '@texcolorscheme.uri' }, -- For help files
    ['@texcolorscheme.uri.html'] = { underline = true }, -- For html

    -- semantic highlighting
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.enumMember'] = { fg = colorscheme.burlywood3 },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@text' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@method' },
    ['@lsp.type.macro'] = { link = '@label' },
    ['@lsp.type.decorator'] = { link = '@label' },
    ['@lsp.typemod.function.declaration'] = { link = '@function' },
    ['@lsp.typemod.function.readonly'] = { link = '@function' },
  }

  -- integrations
  groups = vim.tbl_extend('force', groups, cmp.highlights())

  -- overrides
  groups = vim.tbl_extend(
    'force',
    groups,
    type(config.overrides) == 'function' and config.overrides()
      or config.overrides
  )

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function theme.setup(values)
  setmetatable(
    config,
    { __index = vim.tbl_extend('force', config.defaults, values) }
  )

  theme.bufferline = { highlights = {} }
  theme.bufferline.highlights = bufferline.highlights(config)
end

function theme.colorscheme()
  if vim.version().minor < 8 then
    vim.notify(
      'Neovim 0.8+ is required for my-theme colorscheme',
      vim.log.levels.ERROR,
      { title = 'Min Theme' }
    )
    return
  end

  vim.api.nvim_command 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.api.nvim_command 'syntax reset'
  end

  vim.g.VM_theme_set_by_colorscheme = true
  vim.o.termguicolors = true
  vim.g.colors_name = 'my-theme'

  set_terminal_colors()
  set_groups()
end

return theme
