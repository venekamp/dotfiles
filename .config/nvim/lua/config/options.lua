-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use this scroll off margines instead of the ones fron lazyvim
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 1

-- Tell neovim where it can find a python executable
vim.g.python3_host_prog = "/Users/venek001/.local/share/virtualenvs/neovim-python3-39fi5WHV/bin/python3"

-- Do not user the perl provider with neovim
vim.g.loaded_perl_provider = 0

-- vim.lsp.buf.format({
--   {
--     trimTrailingWhitespace = true,
--   },
-- })
