-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- local remove_space = vim.api.nvim_create_augroup("remove_space", { clear = true })
--
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   group = remove_space,
--   pattern = { "*" },
--   command = [[%s/\s\+$//e]],
-- })
--

-- local py_format = vim.api.nvim_create_augroup("python_formal", { clear = true })
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   group = py_format,
--   pattern = { "*.py" },
--   command = [[Black]],
-- })
