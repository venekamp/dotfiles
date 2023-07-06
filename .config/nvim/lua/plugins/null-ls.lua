-- Neovim 0.90 changed the way gq and gqq work when the LSP null-ls is in use.
-- The formatting is handed over to the attached LSP server. However, in case
-- the LSP server does not have an implementations for this, the formatting is
-- effectively disabled. The below function simply removes the formatter and
-- thereby restoring the old gq and gqq behaviour is there was no LSP formatter
-- to begin with. See also: https://github.com/jose-elias-alvarez/null-ls.nvim/issues/1131#issuecomment-1457584752
require("lazyvim.util").on_attach(function(client, buf)
  if client.name == "null-ls" then
    if not require("null-ls.generators").can_run(vim.bo[buf].filetype, require("null-ls.methods").lsp.FORMATTING) then
      vim.bo[buf].formatexpr = nil
    end
  end
end)

return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save#sync-formatting
    local null_ls = require("null-ls")
    null_ls.setup({
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
      sources = {
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.formatting.isort,
      },
    })
  end,
}
