-- augroup filetype_tex
--     autocmd!
--     autocmd BufNewFile,BufReadPost *.tex :VimtexCompile
--     autocmd Filetype tex :set tw=72 ts=3 sw=3 et
--     autocmd Filetype tex :set spell
-- augroup END

-- let g:vimtex_compiler_progname = 'nvr'
-- let g:vimtex_compiler_latexmk_engines = { '_' : '-lualatex' }
-- let g:tex_flavor = 'latex'

vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_compiler_latexmk_engines = {
  pdfdvi    = '-pdfdvi',
  pdfps     = '-pdfps',
  pdflatex  = '-pdf',
  luatex    = '-lualatex',
  lualatex  = '-lualatex',
  xelatex   = '-xelatex',
}
vim.g.tex_flavor = 'latex'
vim.g.vimtex_compiler_latexmk = {
  build_dir = 'build'
}
