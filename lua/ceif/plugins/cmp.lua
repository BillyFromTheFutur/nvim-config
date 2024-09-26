return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim", -- vs-code like pictograms
		"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local luasnip = require("luasnip")

		-- Load snippets from VSCode format
		require("luasnip.loaders.from_vscode").lazy_load()

		-- Setup nvim-cmp
		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
			}),
			formatting = {
				expandable_indicator = true,
				fields = { "abbr", "menu", "kind" }, -- Met "abbr" à gauche et "kind" à droite
				format = lspkind.cmp_format({
					mode = "symbol", -- Show only symbols
					maxwidth = 50, -- Limit the width of the menu
					ellipsis_char = "...", -- For long items
					symbol_map = {
						Text = "  ",
						Method = "  ",
						Function = "  ",
						Constructor = "  ",
						Field = "  ",
						Variable = "  ",
						Class = "  ",
						Interface = "  ",
						Module = "  ",
						Property = "  ",
						Unit = "  ",
						Value = "  ",
						Enum = "  ",
						Keyword = "  ",
						Snippet = "  ",
						Color = "  ",
						File = "  ",
						Reference = "  ",
						Folder = "  ",
						EnumMember = "  ",
						Constant = "  ",
						Struct = "  ",
						Event = "  ",
						Operator = "  ",
						TypeParameter = "  ",
					},
				}),
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- For luasnip users.
				{ name = "buffer" },
				{ name = "path" },
			}),
			completion = {
				completeopt = "menu,menuone,noselect",
			},
			window = {
				documentation = cmp.config.window.bordered(),
				completion = cmp.config.window.bordered(),
			},
			experimental = {
				ghost_text = false, -- Disable ghost text for better completion experience
			},
			-- Filter out unwanted snippets
			sorting = {
				priority_weight = 2,
				comparators = {
					cmp.config.compare.offset,
					cmp.config.compare.exact,
					cmp.config.compare.score,
					cmp.config.compare.recently_used,
					cmp.config.compare.locality,
					cmp.config.compare.kind,
					cmp.config.compare.sort_text,
					cmp.config.compare.length,
					cmp.config.compare.order,
					function(entry1, entry2)
						local kind1 = entry1:get_kind()
						local kind2 = entry2:get_kind()
						if kind1 == cmp.lsp.CompletionItemKind.Text and kind2 ~= cmp.lsp.CompletionItemKind.Text then
							return false
						elseif
							kind1 ~= cmp.lsp.CompletionItemKind.Text and kind2 == cmp.lsp.CompletionItemKind.Text
						then
							return true
						end
					end,
				},
			},
		})

		-- Set Vim options for completion
		vim.cmd([[
      set completeopt=menuone,noinsert,noselect
      highlight! default link CmpItemKind CmpItemMenuDefault
    ]])
	end,
}
