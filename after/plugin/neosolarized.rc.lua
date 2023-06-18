--local statusTokyo, nTokyo = pcall(require, "tokyonight")
--if (not statusTokyo) then return end


--nTokyo.setup({
--comment_italics = true,
--})

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


--Color.new('purpleDark', '#272660')

Color.new('black', '#1A1B26')
Color.new('purple', '#C792EA')
Color.new('purpleDark', '#9D79D6')
Color.new('base0', '#FFD580')
Color.new('base1', '#89DDFF')
Color.new('base2', '#A0AAB9')
Color.new('base3', '#82AAFF')
Color.new('base00', '#57737A')
Color.new('base01', '#4B5363')
Color.new('base02', '#1A1B26')
Color.new('base03', '#1A1B26')
Color.new('yellow', '#EBCB8B')
Color.new('orange', '#F78C6C')
Color.new('red', '#FF5458')
Color.new('magenta', '#FF5370')
Color.new('violet', '#A9A1E1')
Color.new('blue', '#82AAFF')
Color.new('cyan', '#89DDFF')
Color.new('green', '#C3E88D')


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
