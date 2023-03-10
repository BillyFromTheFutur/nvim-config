local status, ts, M = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end
require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "zig", "gcc", "cc" }


ts.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "markdown",
        "tsx",
        "toml",
        "fish",
        --     "php",
        "json",
        "yaml",
        "css",
        "html",
        "lua",
        "vim",
        "swift",
        "dart"
    },
    autotag = {
        enable = true,
    }
}
