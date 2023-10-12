require("oil").setup({
    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set("n", "<leader>p", "<cmd>Oil<CR>")
