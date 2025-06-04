return {
	-- {
	--       'folke/tokyonight.nvim',
	-- priority = 1000, -- Make sure to load this before all the other start plugins.
	-- config = function()
	--   ---@diagnostic disable-next-line: missing-fields
	--   require('tokyonight').setup {
	--     styles = {
	--       comments = { italic = false }, -- Disable italics in comments
	--     },
	--   }

	--   -- Load the colorscheme here.
	--   -- Like many other themes, this one has different styles, and you could load
	--   -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
	--   vim.cmd.colorscheme 'tokyonight-night'
	-- end,
	-- },
	-- {
	--   "tiagovla/tokyodark.nvim",
	--   opts = {
	--     -- custom options here
	--   },
	--   config = function(_, opts)
	--     require("tokyodark").setup(opts)   -- calling setup is optional
	--     vim.cmd [[colorscheme tokyodark]]
	--   end,
	-- },
	{
		"EdenEast/nightfox.nvim",
		lazy = false, -- so it's loaded on startup
		priority = 1000, -- load before other plugins
		config = function()
			vim.cmd("colorscheme carbonfox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},

	-- {
	--     "Mofiqul/vscode.nvim",
	--     name = 'vscode',
	--     config = function()
	--         vim.cmd.colorscheme "vscode"
	--         vim.cmd('hi Directory guibg=NONE')
	--         vim.cmd('hi SignColumn guibg=NONE')
	--         enable_transparency()
	--     end
	-- },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "nightfox",
		},
	},
}
