-- vim.opt.exrc = true

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300

vim.opt.signcolumn = 'number'
vim.wo.wrap = false
vim.wo.number = true

-- Use spaces for tab and set 2 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Visualize tabs, training white space
vim.opt.list = true
vim.opt.listchars = {tab='▸ ', trail='·'}

-- vim.opt.relativenumber = true

-- Let <space> be the leader key
vim.g.mapleader = ' '

-- Clear searches with <leader>h
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Set Python3 virtual env for neovim
vim.g.python_support_python2_require = 0    -- Don't want Python2
vim.g.python_support_python3_require = 1    -- Want Python3
vim.g.python3_host_prog='$HOME/.local/share/virtualenvs/neovim-python3-39fi5WHV/bin/python3'


-- Set scroll offsets
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 1

-- Autocommand for remembering the last cursor position of the file
table.unpack = table.unpack or unpack -- Needed for Lua 5.1 compatibility

local remember_cursor = vim.api.nvim_create_augroup('remembering_cursor', {clear = true})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufReadPost' }, {
  group = remember_cursor,
  callback = function()
    local row, column = table.unpack(vim.api.nvim_buf_get_mark(0, '"'))
    local buf_line_count = vim.api.nvim_buf_line_count(0)

    if row >= 1 and row <= buf_line_count then
      vim.api.nvim_win_set_cursor(0, { row, column })
    end
  end,
})


-- Autocommand for removing white space at the end of a line when writing the buffer.
local remove_trailing_spaces = vim.api.nvim_create_augroup('remove_trailing_spaces', {clear = true})

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    --  autocmd BufWritePre * %s/\s\+$//e
    group = remove_trailing_spaces,
    callback = function()
    if not vim.o.binary and vim.o.filetype ~= 'diff' then
        local current_view = vim.fn.winsaveview()
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.fn.winrestview(current_view)
    end
end
})
