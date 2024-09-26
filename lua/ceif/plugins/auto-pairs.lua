return {
	"windwp/nvim-autopairs",
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			disable_filetype = { "TelescopePrompt", "vim" },
		})

		-- Example of custom rule (optional)
		local Rule = require("nvim-autopairs.rule")
		autopairs.add_rules({
			Rule("$$", "$$", "tex"),
			-- you can add more rules here
		})
	end,
}
