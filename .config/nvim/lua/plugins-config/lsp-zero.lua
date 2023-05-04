local lsp = require('lsp-zero')

-- lsp.preset('recommended')

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = {
    error = '',
    warn = '▲',
    hint = '⚑',
    info = ''
  }
})

lsp.nvim_workspace()

-- Define Language Server that will be installed always
lsp.ensure_installed({
  'pyright',
  'lua_ls',
  'bashls',
  'jsonls',
  'yamlls'
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  set_lsp_keymaps = { omit = { '<F2>' } } -- We'll define <leader>rn instead, see lsp.on_attach() below.
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  -- Here we set our LSP rename keymap binding
  vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
end)

lsp.setup()

-- By default, lsp_zero sets virtual_text to false, i.e. no virtual text is
-- displayed. Let's change that here.
-- See also: https://neovim.io/doc/user/diagnostic.html#vim.diagnostic.config()
vim.diagnostic.config({
  virtual_text = {prefix = "", source = false},
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = true,
})
