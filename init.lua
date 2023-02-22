require('base')
require('highlights')
require('maps')
require('plugins')
require("presence").setup()
require("notify").setup()
--require("pets").setup()
--require('neoscroll').setup()
--require("dapui").setup()
require('mini.move').setup()
--require('chatgpt').setup()
--require("copilot").setup({})
--require("flutter-tools").setup {}
--require("copilot").setup({})
require("nvim-gps").setup()
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
