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

--fstar detection
vim.filetype.add({
  extension = {
    fst = "fstar" 
  }
})

vim.cmd [[autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 expandtab]]

vim.api.nvim_create_autocmd('FileType', {
  desc = 'setup treesitter folds',
  callback = function (s)
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    --vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldlevel = 1
  end
})

--shoutouts to the random reddit commenter who provided this
-- opens folds when entering from telescope
vim.api.nvim_create_autocmd({"BufEnter","InsertLeave","TextYankPost", "WinEnter"}, { --"TextChanged"
  pattern = "*",
  callback = function()
    -- print("open fold")
    local line_data = vim.api.nvim_win_get_cursor(0) -- returns {row, col}
    -- print("row: "..line_data[1])
    local fold_closed = vim.fn.foldclosed(line_data[1]) -- -1 if no fold at line
    -- print("closed: "..fold_closed)
    if fold_closed < line_data[1] and fold_closed ~= -1 then --fold before cursor, and fold exist (not -1)
    vim.cmd [[normal! zv]]
    end
  end,
  group = init_group,
})


vim.cmd.hi 'Comment term=italic ctermfg=Cyan guifg=#80a0ff gui=italic'
vim.cmd.hi 'LineNr ctermfg=Cyan guifg=#80a0ff'
