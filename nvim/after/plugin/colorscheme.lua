require("rose-pine").setup({
	-- disable_background = true,
})
-- vim.cmd('colorscheme rose-pine')

require("gruvbox").setup({
	contrast = "hard",
	palette_overrides = {
		dark0_hard = "#0f1214",
	},
	-- transparent_mode = true,
})

require("ayu").setup({
	overrides = {
		IncSearch,
		-- Normal = { bg = "None" },
		-- ColorColumn = { bg = "None" },
		-- SignColumn = { bg = "None" },
		-- Folded = { bg = "None" },
		-- FoldColumn = { bg = "None" },
		-- CursorLine = { bg = "None" },
		-- CursorColumn = { bg = "None" },
		-- WhichKeyFloat = { bg = "None" },
		-- VertSplit = { bg = "None" },
	},
})

vim.cmd("colorscheme gruvbox")
