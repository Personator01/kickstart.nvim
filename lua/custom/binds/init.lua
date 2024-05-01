--Swap brackets
vim.keymap.set('i', '{', '[', { desc = 'Swap brackets' })
vim.keymap.set('i', '}', ']', { desc = 'Swap brackets' })
vim.keymap.set('i', '[', '{', { desc = 'Swap brackets' })
vim.keymap.set('i', ']', '}', { desc = 'Swap brackets' })

vim.keymap.set('n', '<leader>c', ':NERDTreeToggle<CR>', { desc = 'Open tree' })
vim.keymap.set('n', '<leader>v', ':Outline<CR>', { desc = 'Open outline' })
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', { desc = 'Open fzf' })
vim.keymap.set('n', '<leader>g', ':Git ', { desc = 'Open fugitive' })
vim.keymap.set('n', '<leader>lx', ':LLPStartPreview<CR>', { desc = 'open latex preview' })
vim.keymap.set('n', '<leader>t', ':Trouble<CR>', { desc = 'Open Trouble' })
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { desc = 'Open Undo tree'})

vim.keymap.set('n', '<leader>,', ':bp<CR>', { desc = ' swap buffers ' })
vim.keymap.set('n', '<leader>.', ':bn<CR>', { desc = ' swap buffers ' })
vim.keymap.set('n', '<leader>/', ':bd<CR>', { desc = ' close buffer ' })

vim.keymap.set('n', '<c-,>', ':bp<CR>', { desc = 'swap buffers'})
vim.keymap.set('n', '<c-.>', ':bn<CR>', { desc = 'swap buffers'})

vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = 'Harpoon add file' })
vim.keymap.set('n', '<leader>hm', require('harpoon.ui').toggle_quick_menu, { desc = 'Open harpoon menu' })
vim.keymap.set('n', '<leader>hh', require('harpoon.ui').nav_prev, { desc = 'next harpoon buffer' })
vim.keymap.set('n', '<leader>hl', require('harpoon.ui').nav_next, { desc = 'next harpoon buffer' })

vim.keymap.set('n', '<leader>a', '<c-6>', { desc = 'alternate file' })
