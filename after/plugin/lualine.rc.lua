local status, lualine = pcall(require, "lualine")
local gps = require("nvim-gps")
if (not status) then return end
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },
  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },
  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}
function StatusLine()
  local extension = string.match(nvim.buf.name, "%.([^%.]+)$")
  if extension == "dart" then
    return vim.g.flutter_tools_decorations.app_version
  else
    return ""
  end
end

vim.cmd [[colorscheme tokyonight]]
lualine.setup {
  options = {
    --theme = bubbles_theme,
    theme = 'tokyonight',
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 1, top_padding = 1 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {
      --vim.cmd [[%!v:StatusLine()]]
      'diff', 'diagnostics',
    },
    lualine_y = { 'filetype', 'progress',
      --require('pomodoro').statusline
    },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 1, top_padding = 1 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'mode' },
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
