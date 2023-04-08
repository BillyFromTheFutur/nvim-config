local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
  comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles


Color.new('black', '#000000')
Color.new('purple', '#272660')
Color.new('purpleDark', '#2D2B55')
--Color.new('purpleDark', '#272660')
Color.new('base0', '#FFEFD7')
Color.new('base1', '#93a1a1')
Color.new('base2', '#FBEBD9')
Color.new('base3', '#4D21FC')
Color.new('base00', '#657b83')
Color.new('base01', '#586e75')
Color.new('base02', '#1f1137')
Color.new('base03', '#2D2B55')
Color.new('yellow', '#b58900')
Color.new('orange', '#875faf')
Color.new('red', '#ddb403')
Color.new('magenta', '#fff0db')
Color.new('violet', '#6c71c4')
Color.new('blue', '#b5651d')
Color.new('cyan', '#B362FF')
Color.new('green', '#d33682')

Group.new('CursorLine', colors.none, colors.purpleDark, styles.NONE, colors.purple)
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
