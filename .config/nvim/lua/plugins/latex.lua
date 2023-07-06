local words_en_us = {}
for word in io.open(vim.fn.stdpath("config") .. "/spell/en_utf-8", "r"):lines() do
  table.insert(words_en_us, word)
end

return {
  {
    "lervag/vimtex",
  },

  -- add texlab and ltex-ls to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        texlab = {},
        ltex = {
          settings = {
            ltex = {
              dictionary = {
                ["en-US"] = words_en_us,
              }
            }
          }
        },
      },
    },
  },
}
