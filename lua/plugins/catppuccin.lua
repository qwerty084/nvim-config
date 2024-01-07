return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavor = "mocha",
            background = {
                dark = "mocha"
            },
            term_colors = true,
            integrations = {
                cmp = true,
                treesitter = true,
            }
        })
        vim.cmd.colorscheme "catppuccin"
    end
}
