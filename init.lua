require('base')
require('highlights')
require('maps')
require('plugins')
--require('neoscroll').setup()
require("dapui").setup()
require('mini.move').setup()
--require("flutter-tools").setup {}
local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"
if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end

vim.cmd [[
set mouse =
]]
