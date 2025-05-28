return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                direction = "float", -- or "horizontal", "vertical", or "tab"
                float_opts = {
                    border = "curved",
                },
            })
        end,
    },
}
