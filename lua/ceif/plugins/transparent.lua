return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			extra_groups = {
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"NvimTreeNormal", -- NvimTree
			},
		})
		--       require('transparent').clear_prefix('BufferLine')
		--       require('transparent').clear_prefix('lualine')
	end,
}
