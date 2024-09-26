return {
    'akinsho/bufferline.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                mode = "tabs",
                separator_style = { '', '' },
                always_show_bufferline = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                color_icons = true,
                sort_by = "tabs",
                diagnostics = 'nvim_lsp',
                -- diagnostics_update_in_insert is deprecated
            },
            highlights = {
                separator = {
                    fg = '#ffffff',  -- Blanc pour le séparateur
                },
                separator_selected = {
                    fg = '#ffffff',  -- Blanc pour le séparateur
                },
                background = {
                    --fg = '#6c71c4',
                    fg = '#b2b4db',
                },
                buffer_selected = {
                    bold = true,
                    italic = false
                },
                fill = {
                }
            },
        })

        -- Key mappings
        vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
        vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })

        -- Set diagnostic config
        vim.diagnostic.config({
            update_in_insert = true,
        })
    end,
}
