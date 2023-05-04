-- Format python fils on write with the Black formatter and sort imports as well
local format = vim.api.nvim_create_augroup("format", {clear = true})

vim.api.nvim_create_autocmd(
    {"BufWritePre"},
    {
        group = format,
        pattern = { "*.py" },
        callback = function ()
          vim.api.nvim_command('Black')
        end
    }
)
-- For whatever reason, adding a second autocmd that changes the buffer, leaves
-- that buffer in a modified state. It appears that after the first write,  the
-- buffer is changed by the second autocmd, but never saved.
--
-- vim.api.nvim_create_autocmd(
--     {"BufWritePre"},
--     {
--         group = format,
--         pattern = { "*.py" },
--         callback = function ()
--           vim.api.nvim_command('PyrightOrganizeImports')
--         end
--     }
-- )
