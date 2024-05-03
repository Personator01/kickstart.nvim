--Tree settings
vim.g.NERDTreeChDirMode = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeAutoDeleteBuffer = 1
vim.g.NERDTreeShowHidden = 1

--Latex preview settings
vim.g.Tex_ViewRule_dvi = 'evince'
vim.g.Tex_ViewRule_ps = 'evince'
vim.g.Tex_ViewRule_pdf = 'evince'
vim.g.livepreview_engine = 'xelatex'

vim.g.shiftwidth = 4

vim.cmd [[autocmd FileType xml setlocal shiftwidth=2 tabstop=2 expandtab]]
vim.cmd [[autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab]]
vim.cmd [[autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 expandtab]]

vim.g.foldmethod = 'expr'
vim.g.foldexpr = 'nvim_treesitter#foldexpr()'

vim.cmd.hi 'Comment term=italic ctermfg=Cyan guifg=#80a0ff gui=italic'
vim.cmd.hi 'LineNr ctermfg=Cyan guifg=#80a0ff'
