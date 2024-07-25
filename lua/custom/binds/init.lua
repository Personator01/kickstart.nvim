--Swap brackets
vim.keymap.set('i', '{', '[', { desc = 'Swap brackets' })
vim.keymap.set('i', '}', ']', { desc = 'Swap brackets' })
vim.keymap.set('i', '[', '{', { desc = 'Swap brackets' })
vim.keymap.set('i', ']', '}', { desc = 'Swap brackets' })

vim.keymap.set('n', 'cp', 'c/[,)]<CR>', { desc = '[C]hange [P]arameter' })

vim.keymap.set('n', '<leader>wf', ':NERDTreeToggle<CR>', { desc = '[W]indow [F]ile tree' })
vim.keymap.set('n', '<leader>wo', ':Outline<CR>', { desc = '[W]indow [O]utline' })
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', { desc = 'Open fzf' })
vim.keymap.set('n', '<leader>g', ':Git ', { desc = 'Open git' })
vim.keymap.set('n', '<leader>wl', ':LLPStartPreview<CR>', { desc = '[W]indow [L]atex preview' })
vim.keymap.set('n', '<leader>wt', ':TroubleToggle<CR>', { desc = '[W]indow [T]rouble' })
vim.keymap.set('n', '<leader>wu', ':UndotreeToggle<CR>', { desc = '[W]indow [U]ndo tree'})

vim.keymap.set('n', '<leader>,', ':bp<CR>', { desc = ' swap buffers ' })
vim.keymap.set('n', '<leader>.', ':bn<CR>', { desc = ' swap buffers ' })
vim.keymap.set('n', '<leader>/', ':bd<CR>', { desc = ' close buffer ' })

vim.keymap.set('n', '<c-,>', ':bp<CR>', { desc = 'swap buffers'})
vim.keymap.set('n', '<c-.>', ':bn<CR>', { desc = 'swap buffers'})

vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = 'Harpoon add file' })
vim.keymap.set('n', '<leader>hh', require('harpoon.ui').toggle_quick_menu, { desc = 'Open harpoon menu' })
vim.keymap.set('n', '<leader>h,', require('harpoon.ui').nav_prev, { desc = 'next harpoon buffer' })
vim.keymap.set('n', '<leader>h.', require('harpoon.ui').nav_next, { desc = 'next harpoon buffer' })

vim.keymap.set('n', '<leader>a', '<c-6>', { desc = 'alternate file' })
