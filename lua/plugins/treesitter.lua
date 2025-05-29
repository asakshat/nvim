return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			-- Required fields
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			modules = {},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"json",
				"javascript",
				"query",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"vimdoc",
				"c",
				"dockerfile",
				"gitignore",
			},
		})
	end,
}
