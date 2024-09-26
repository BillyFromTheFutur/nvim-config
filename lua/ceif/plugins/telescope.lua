return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
    config = function()
        local actions = require('telescope.actions')
        local action_state = require('telescope.actions.state')
        local builtin = require("telescope.builtin")
        local fb_actions = require("telescope").extensions.file_browser.actions

        local function telescope_buffer_dir()
            return vim.fn.expand('%:p:h')
        end

        require("telescope").setup {
            defaults = {
                winblend = 15,
                mappings = {
                    n = {
                        ["q"] = actions.close,
                        ["l"] = actions.select_default, -- Map "l" to select_default action
                    },
                },
                -- Ensure Telescope does not create hidden buffers
            },
            pickers = {
diagnostics = {
					theme = "ivy",
					initial_mode = "normal",
					layout_config = {
						preview_cutoff = 9999,
					},
				},

            },
            extensions = {
                file_browser = {
                    theme = "dropdown",
                    hijack_netrw = true,
                    file_icon_space = "  ",
                    mappings = {
                        -- Custom insert mode mappings
                        ["i"] = {
                            ["<C-w>"] = function() vim.cmd('normal vbd') end,
                        },
                        -- Custom normal mode mappings
                        ["n"] = {
                            ["N"] = fb_actions.create,
                            ["h"] = fb_actions.goto_parent_dir,
                            ["sd"] = fb_actions.sort_by_date,
                            ["m"] = fb_actions.move,
                            ["a"] = fb_actions.toggle_hidden,
                            ["/"] = function()
                                vim.cmd('startinsert')
                            end,
                            ["l"] = actions.select_default,  -- Map "l" to select_default action in file browser
                        },
                    },
                },
            },
        }

        require("telescope").load_extension("file_browser")
		require("telescope").load_extension("fzf")
        -- Key mappings with additional checks
        vim.keymap.set('n', ';f', function()
					local builtin = require("telescope.builtin")
					builtin.find_files({
						no_ignore = false,
						hidden = true,
					})
				end)

        vim.keymap.set('n', ';r', function()
            builtin.live_grep({
						additional_args = { "--hidden" },
					})
        end)

        vim.keymap.set('n', '\\\\', function()
            builtin.buffers()
        end)

        vim.keymap.set('n', ';t', function()
            builtin.help_tags()
        end)

        vim.keymap.set('n', ';;', function()
            builtin.resume()
        end)

        vim.keymap.set('n', ';e', function()
            builtin.diagnostics()
        end)

        vim.keymap.set('n', 'dgf', function()
            builtin.git_files()
        end)

        vim.keymap.set('n', 'scf', function()
            builtin.grep_string()
        end)

        vim.keymap.set('n', 'fof', function()
            builtin.oldfiles()
        end)

        vim.keymap.set('n', 'sqf', function()
            builtin.quickfix()
        end)

        vim.keymap.set("n", "sf", function()
            require("telescope").extensions.file_browser.file_browser({
                path = "%:p:h",
                cwd = telescope_buffer_dir(),
                respect_gitignore = false,
                hidden = true,
                grouped = true,
                previewer = true,
                initial_mode = "normal",
                layout_config = { height = 40 }
            })
        end)
        --vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })

    end,
}
