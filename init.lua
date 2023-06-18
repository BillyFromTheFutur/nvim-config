require('base')
require('highlights')
require('maps')
require('plugins')
--require("presence").setup()
--require("nvim-gps").setup()
--require('mini.animate').setup()
--require "fidget".setup {}
--require('mini.move').setup()

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
--vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
vim.cmd [[
set mouse =
]]
