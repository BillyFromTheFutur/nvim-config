-- settings.lua
-- -- test
-- return function()

-- -- Assurez-vous que le contexte est modifiable
--   vim.api.nvim_create_autocmd("BufEnter", {
--     pattern = "*",
--     callback = function()
--
--     end,
--   })
local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = false
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true
o.shell = "cmd.exe"

-- Key mappings

o.fileencoding = "utf-8"
o.hlsearch = true
-- o.backup = false
o.cmdheight = 1
-- o.laststatus = 2

-- o.scrolloff = 10
-- o.backupskip = { '/tmp/*', '/private/tmp/*' }
o.ignorecase = true
o.smarttab = true
o.breakindent = true
o.ai = true
o.si = true
o.wrap = true
o.backspace = { "start", "eol", "indent" }
o.path:append({ "**" })
o.wildignore:append({ "*/node_modules/*" })
vim.cmd([[let &t_Cs = "\e[4:3m "]])
vim.cmd([[let &t_Ce = "\e[4:0m "]])
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})
o.formatoptions:append({ "r" })
-- o.swapfile = false
-- o.undodir = vim.fn.stdpath('config') .. '/undo'
-- o.undofile = true
o.incsearch = true
o.signcolumn = "auto"
o.winblend = 0
o.wildoptions = "pum"
vim.g.mapleader = "\\"
o.pumblend = 5
-- o.background = 'dark'
o.clipboard:prepend({ "unnamed", "unnamedplus" })
