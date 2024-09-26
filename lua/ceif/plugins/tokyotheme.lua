return {
    'folke/tokyonight.nvim',
    config = function()
        require('tokyonight').setup({
            transparent = vim.g.transparent_enabled,
            style = "storm",  -- Choix du style : "night", "storm", "moon", "day"
            terminal_colors = true,  -- Utiliser les couleurs du thème pour le terminal
            vim.cmd("colorscheme tokyonight")

        })
        vim.g.tokyonight_dark_float = false

    end
}
