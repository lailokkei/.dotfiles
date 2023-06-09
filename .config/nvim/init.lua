require("idfk")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

require("gruvbox").setup({
    transparent_mode=true,
})
vim.cmd("colorscheme gruvbox")
