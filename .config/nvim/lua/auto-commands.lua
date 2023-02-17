-- Format python fils on write with the Black formatter
vim.api.nvim_create_autocmd(
    "BufWritePre",
    {
        pattern = { "*.py" },
        command = ":Black"
    }
)
