--local bufferline = require 'my-theme.integrations.bufferline'
--local cmp = require 'my-theme.integrations.cmp'
local colorscheme = require 'thaumaturge.colorscheme'
local config = require 'thaumaturge.config'
local utils = require 'thaumaturge.utils'
local theme = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = colorscheme.handmade_back
  vim.g.terminal_color_1 = colorscheme.error_red
  vim.g.terminal_color_2 = colorscheme.comment_green
  vim.g.terminal_color_3 = colorscheme.day_nine_yellow
  vim.g.terminal_color_4 = colorscheme.burlywood3
  vim.g.terminal_color_5 = colorscheme.dark_goldenrod
  vim.g.terminal_color_6 = colorscheme.linkText
  vim.g.terminal_color_7 = colorscheme.fg
  vim.g.terminal_color_8 = colorscheme.inactiveText
  vim.g.terminal_color_9 = colorscheme.errorText
  vim.g.terminal_color_10 = colorscheme.olive_drab
  vim.g.terminal_color_11 = colorscheme.warningText
  vim.g.terminal_color_12 = colorscheme.grey_light_blue
  vim.g.terminal_color_13 = colorscheme.error_red
  vim.g.terminal_color_14 = colorscheme.olive_drab
  vim.g.terminal_color_15 = colorscheme.gray50
  vim.g.terminal_color_handmade_background = colorscheme.handmade_back
  vim.g.terminal_color_foreground = colorscheme.fg
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colorscheme.handmade_back
 
  local groups = {
    -- base
    Normal = { fg = colorscheme.naysayer_text_default, bg = colorscheme.handmade_back },
    NormalNC = { link = 'Normal' },
    LineNr = { bg = colorscheme.handmade_line_numbers_back , fg = colorscheme.handmade_line_numbers_text },
    Cursor = { fg = colorscheme.cursor_foreground, bg = colorscheme.cursor },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colorscheme.handmade_highlight_cursor_line },
    CursorLineNr = { fg = colorscheme.day_nine_yellow },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colorscheme.burlywood3 },
    DiffAdd = { bg = bg, fg = diff_add },
    DiffChange = { bg = bg, fg = diff_change },
    DiffDelete = { bg = bg, fg = diff_delete },
    DiffText = { bg = bg, fg = diff_text },
    EndOfBuffer = { fg = colorscheme.naysayer_text_default },
    TermCursor = { link = 'Cursor' },
    TermCursorNC = { link = 'Cursor' },
    ErrorMsg = { fg = colorscheme.error_red },
    VertSplit = { fg = colorscheme.handmade_bar, bg = handmade_back },
    Winseparator = { link = 'VertSplit' },
    SignColumn = { link = 'Normal' },
    Folded = { fg = colorscheme.naysayer_text_default, bg = colorscheme.handmade_background },
    FoldColumn = { link = 'SignColumn' },
    IncSearch = { bg = colorscheme.handmade_highlight, fg = colorscheme.handmade_back },
    Substitute = { link = 'IncSearch' },
    MatchParen = { fg = colorscheme.fleury_color_brace_highlight, bg = colorscheme.handmade_back },
    ModeMsg = { link = 'Normal' },
    MsgArea = { link = 'Normal' },
    -- MsgSeparator = {},
    MoreMsg = { fg = colorscheme.burlywood3 },
    NonText = { fg = utils.shade(colorscheme.handmade_back, 0.30) },
    NormalFloat = { bg = colorscheme.handmade_mark },
    Pmenu = { link = 'NormalFloat' },
    PmenuSel = { bg = colorscheme.handmade_bar_active },
    PmenuSbar = { bg = colorscheme.handmade_bar },
    PmenuThumb = { bg = colorscheme.handmade_bar },
    Question = { fg = colorscheme.handmade_ghost_character },
    QuickFixLine = { fg = colorscheme.handmade_ghost_character },
    SpecialKey = { fg = colorscheme.grey_light_blue },
    StatusLine = { fg = colorscheme.naysayer_text_default, bg = colorscheme.handmade_back },
    StatusLineNC = {
      fg = colorscheme.handmade_bar_active,
      bg = colorscheme.handmade_background,
    },
    TabLine = {
      bg = colorscheme.handmade_background,
      fg = colorscheme.handmade_bar_active,
    },
    TabLineFill = { link = 'TabLine' },
    Search = { bg = colorscheme.handmade_highlight, fg = colorscheme.handmade_highlight_white },
    Title = { fg = colorscheme.naysayer_text_default },
    Visual = {
      bg = colorscheme.handmade_highlight_junk
    },
    VisualNOS = { link = 'Visual' },
    WarningMsg = { fg = colorscheme.warningText },
    Whitespace = { fg = colorscheme.handmade_ghost_character },
    Comment = { fg = colorscheme.fluery_comment },

    Constant = { fg = colorscheme.fluery_str_constant },
    String = { fg = colorscheme.naysayer_str_constant },
    Character = { fg = colorscheme.naysayer_char_constant },
    Number = { fg = colorscheme.naysayer_int_constant },
    Boolean = { fg = colorscheme.naysayer_int_constant },
    Float = { link = 'Number' },

    Identifier = { fg = colorscheme.naysayer_at_highlight },
    Function = { fg = colorscheme.hangmade_comment },
    Method = { fg = colorscheme.fleury_color_plot_cycle },
    -- Property = { fg = colorscheme.burlywood3 },
    Field = { link = 'Property' },
    Parameter = { fg = colorscheme.naysayer_text_default },
    -- Statement = { fg = colorscheme.olive_drab },
    -- Conditional = { fg = colorscheme.olive_drab },
    -- Repeat = {},
    -- Label = { fg = colorscheme.burlywood3 },
    Operator = { fg = colorscheme.naysayer_text_default },
    Keyword = { fg = colorscheme.handmade_keyword },
    -- Exception = { fg = colorscheme.error_red },

    PreProc = { fg = colorscheme.macro_purple },
    Include = { link = 'PreProc' },
    Define = { link = 'PreProc' },
    Macro = { link = 'PreProc' },
    --PreCondit = { fg = colorscheme.gray50 },

    Type = { fg = colorscheme.dark_goldenrod },
    Struct = { link = 'Type' },
    Class = { link = 'Type' },

    -- StorageClass = {},
    Structure = { fg = colorscheme.zerg_purple },
    Typedef = { fg = colorscheme.zerg_purple },

    Attribute = { link = 'Character' },
    Punctuation = { fg = colorscheme.grey_light_blue },
    Special = { fg = colorscheme.grey_light_blue },

    SpecialChar = { fg = colorscheme.fleury_color_syntax_crap },
    Tag = { fg = colorscheme.olive_drab },
    Delimiter = { fg = colorscheme.grey_light_blue },
    -- SpecialComment = {},
    Debug = { fg = colorscheme.specialKeyword },

    Underlined = { underline = false },
    Bold = { bold = false },
    Italic = { italic = false },
    Ignore = { fg = colorscheme.handmade_back },
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
    DiagnosticHint = { fg = colorscheme.day_nine_yellow },
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

    --['@text'] = { fg = colorscheme.fg },
    --['@texcolorscheme.literal'] = { link = 'Property' },
    ---- ["@texcolorscheme.reference"] = {},
    --['@texcolorscheme.strong'] = { link = 'Bold' },
    --['@texcolorscheme.italic'] = { link = 'Italic' },
    --['@texcolorscheme.title'] = { link = 'Keyword' },
    --['@texcolorscheme.uri'] = {
    --  fg = colorscheme.burlywood3,
    --  sp = colorscheme.burlywood3,
    --  underline = true,
    --},
    --['@texcolorscheme.underline'] = { link = 'Underlined' },
    --['@symbol'] = { fg = colorscheme.grey_light_blue },
    --['@texcolorscheme.todo'] = { link = 'Todo' },
    --['@comment'] = { link = 'Comment' },
    --['@punctuation'] = { link = 'Punctuation' },
    --['@punctuation.bracket'] = { fg = colorscheme.day_nine_yellow },
    --['@punctuation.delimiter'] = { fg = colorscheme.error_red },
    --['@punctuation.terminator.statement'] = { link = 'Delimiter' },
    --['@punctuation.special'] = { fg = colorscheme.error_red },
    --['@punctuation.separator.keyvalue'] = { fg = colorscheme.error_red },

    --['@texcolorscheme.diff.add'] = { fg = colorscheme.comment_green },
    --['@texcolorscheme.diff.delete'] = { fg = colorscheme.errorText },

    --['@constant'] = { link = 'Constant' },
    --['@constant.builtin'] = { fg = colorscheme.burlywood3 },
    --['@constancolorscheme.builtin'] = { link = 'Keyword' },
    ---- ["@constancolorscheme.macro"] = {},
    ---- ["@define"] = {},
    ---- ["@macro"] = {},
    --['@string'] = { link = 'String' },
    --['@string.escape'] = { fg = utils.shade(colorscheme.olive_drab, 0.45) },
    --['@string.special'] = { fg = utils.shade(colorscheme.burlywood3, 0.45) },
    ---- ["@character"] = {},
    ---- ["@character.special"] = {},
    --['@number'] = { link = 'Number' },
    --['@boolean'] = { link = 'Boolean' },
    ---- ["@float"] = {},
    --['@function'] = {
    --  link = 'Function',
    --},
    --['@function.call'] = { link = 'Function' },
    --['@function.builtin'] = { link = 'Function' },
    ---- ["@function.macro"] = {},
    --['@parameter'] = { link = 'Parameter' },
    --['@method'] = { link = 'Function' },
    --['@field'] = { link = 'Property' },
    --['@property'] = { link = 'Property' },
    --['@constructor'] = { fg = colorscheme.burlywood3 },
    ---- ["@conditional"] = {},
    ---- ["@repeat"] = {},
    --['@label'] = { link = 'Label' },
    --['@operator'] = { link = 'Operator' },
    --['@exception'] = { link = 'Exception' },
    --['@variable'] = {
    --  fg = colorscheme.burlywood3,
    --},
    --['@variable.builtin'] = { fg = colorscheme.burlywood3 },
    --['@variable.member'] = { fg = colorscheme.fg },
    --['@variable.parameter'] = {
    --  fg = colorscheme.fg,
    --},
    --['@type'] = { link = 'Type' },
    --['@type.definition'] = { fg = colorscheme.fg },
    --['@type.builtin'] = { fg = colorscheme.burlywood3 },
    --['@type.qualifier'] = { fg = colorscheme.burlywood3 },
    --['@keyword'] = { link = 'Keyword' },
    ---- ["@storageclass"] = {},
    ---- ["@structure"] = {},
    --['@namespace'] = { link = 'Type' },
    --['@annotation'] = { link = 'Label' },
    ---- ["@include"] = {},
    ---- ["@preproc"] = {},
    --['@debug'] = { fg = colorscheme.specialKeyword },
    --['@tag'] = { link = 'Tag' },
    --['@tag.builtin'] = { link = 'Tag' },
    --['@tag.delimiter'] = { fg = colorscheme.grey_light_blue },
    --['@tag.attribute'] = { fg = colorscheme.dark_goldenrod },
    --['@tag.jsx.element'] = { fg = colorscheme.burlywood3 },
    --['@attribute'] = { fg = colorscheme.dark_goldenrod },
    --['@error'] = { link = 'Error' },
    --['@warning'] = { link = 'WarningMsg' },
    --['@info'] = { fg = colorscheme.burlywood3 },

    ---- Specific languages
    ---- overrides
    --['@label.json'] = { fg = colorscheme.property }, -- For json
    --['@label.help'] = { link = '@texcolorscheme.uri' }, -- For help files
    --['@texcolorscheme.uri.html'] = { underline = true }, -- For html

    ---- semantic highlighting
    --['@lsp.type.namespace'] = { link = '@namespace' },
    --['@lsp.type.type'] = { link = '@type' },
    --['@lsp.type.class'] = { link = '@type' },
    --['@lsp.type.enum'] = { link = '@type' },
    --['@lsp.type.enumMember'] = { fg = colorscheme.burlywood3 },
    --['@lsp.type.interface'] = { link = '@type' },
    --['@lsp.type.struct'] = { link = '@type' },
    --['@lsp.type.parameter'] = { link = '@parameter' },
    --['@lsp.type.property'] = { link = '@text' },
    --['@lsp.type.function'] = { link = '@function' },
    --['@lsp.type.method'] = { link = '@method' },
    --['@lsp.type.macro'] = { link = '@label' },
    --['@lsp.type.decorator'] = { link = '@label' },
    --['@lsp.typemod.function.declaration'] = { link = '@function' },
    --['@lsp.typemod.function.readonly'] = { link = '@function' },
  }

  -- integrations
  --groups = vim.tbl_extend('force', groups, cmp.highlights())

  ---- overrides
  --groups = vim.tbl_extend(
  --  'force',
  --  groups,
  --  type(config.overrides) == 'function' and config.overrides()
  --    or config.overrides
  --)

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
