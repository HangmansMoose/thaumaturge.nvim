local colorscheme = require 'thaumaturge.colorscheme'
local config = require 'thaumaturge.config'
local theme = {}

local bg = config.transparent and 'NONE' or colorscheme.main_bg

theme.normal = {
  a = { bg = colorscheme.burlywood3, fg = colorscheme.main_bg, gui = 'bold' },
  b = { bg = bg, fg = colorscheme.gray50 },
  c = { bg = bg, fg = colorscheme.main_bg },
}

theme.insert = {
  a = {
    bg = colorscheme.grey_light_blue,
    fg = colorscheme.main_bg,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.gray50 },
}

theme.terminal = {
  a = {
    bg = colorscheme.day_nine_yellow,
    fg = colorscheme.main_bg,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.gray50 },
}

theme.command = {
  a = {
    bg = colorscheme.olive_drab,
    fg = colorscheme.main_bg,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.gray50 },
}

theme.visual = {
  a = {
    bg = colorscheme.zerg_purple,
    fg = colorscheme.main_bg,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.gray50 },
}

theme.replace = {
  a = {
    bg = colorscheme.macro_purple,
    fg = colorscheme.main_bg,
    gui = 'bold',
  },
  b = { bg = bg, fg = colorscheme.gray50 },
}

theme.inactive = {
  a = { bg = colorscheme.gray50, fg = colorscheme.main_bg },
  b = { bg = bg, fg = colorscheme.bright_yellow, gui = 'bold' },
  c = { bg = bg, fg = colorscheme.bright_yellow },
}

return theme
