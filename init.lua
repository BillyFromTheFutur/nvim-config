require('base')
require('highlights')
require('maps')
require('plugins')
require("presence").setup()
require("notify").setup()
require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.concealer"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/Documents/notes/work",
          home = "~/Documents/notes/home",
        }
      }
    }
  }
}
--require("pets").setup()
--require('neoscroll').setup()
--require("dapui").setup()
--require('mini.animate').setup()
--require('chatgpt').setup()
--require("copilot").setup({})
--require("flutter-tools").setup {}
--require("copilot").setup({})
require("nvim-gps").setup()
require('fine-cmdline').setup({
  popup = {
    position = { row = '5%', col = '50%' },
    size = { width = '30%', heigth = 30 },
  },
})
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
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
vim.cmd [[
set mouse =
]]
