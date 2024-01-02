-- go format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        local bufnr = vim.api.nvim_get_current_buf()
        vim.lsp.buf.format({ bufnr = bufnr })
    end,
})

-- delete trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local save_cursor = vim.api.nvim_win_get_cursor(0)
        vim.cmd([[ %s/\s\+$//e ]])
        vim.api.nvim_win_set_cursor(0, save_cursor)
    end,
})
