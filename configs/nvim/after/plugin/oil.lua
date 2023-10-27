require("oil").setup({
    buf_options = {
        buflisted = true,
    },

    win_options = {
    },
    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
