require('nvim-treesitter.configs').setup {
  ensure_installed = {"lua", "vim", "python", "c", "cpp", "html", "css"},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  },
}
