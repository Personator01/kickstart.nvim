-- --Swap brackets
-- vim.keymap.set('i', '{', '[', { desc = 'Swap brackets' })
-- vim.keymap.set('i', '}', ']', { desc = 'Swap brackets' })
-- vim.keymap.set('i', '[', '{', { desc = 'Swap brackets' })
-- vim.keymap.set('i', ']', '}', { desc = 'Swap brackets' })

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

vim.keymap.set('n', '<leader>h1', function () require('harpoon.ui').nav_file(1) end)
vim.keymap.set('n', '<leader>h2', function () require('harpoon.ui').nav_file(2) end)
vim.keymap.set('n', '<leader>h3', function () require('harpoon.ui').nav_file(3) end)
vim.keymap.set('n', '<leader>h4', function () require('harpoon.ui').nav_file(4) end)
vim.keymap.set('n', '<leader>hq', function () require('harpoon.ui').nav_file(1) end)
vim.keymap.set('n', '<leader>hw', function () require('harpoon.ui').nav_file(2) end)
vim.keymap.set('n', '<leader>he', function () require('harpoon.ui').nav_file(3) end)
vim.keymap.set('n', '<leader>hr', function () require('harpoon.ui').nav_file(4) end)

vim.keymap.set('n', '<leader>a', '<c-6>', { desc = 'alternate file' })

-- Defined in init.lua
-- map('<leader>ld', require('telescope.builtin').lsp_definitions, '[D]efinition')
-- map('<leader>lr', require('telescope.builtin').lsp_references, '[R]eferences')
-- map('<leader>li', require('telescope.builtin').lsp_implementations, '[I]mplementation')
-- map('<leader>lt', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
-- map('<leader>ls', require('telescope.builtin').lsp_document_symbols, 'Document [S]ymbols')
-- map('<leader>lS', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Workspace [S]ymbols')
-- map('<leader>lf', vim.diagnostic.open_float, '[F]loat')
-- map('<leader>ln', vim.lsp.buf.rename, 'Re[n]ame')
-- map('<leader>la', vim.lsp.buf.code_action, 'Code [A]ction')
-- map('<leader>lh', vim.lsp.buf.hover, '[Hover] Documentation')
-- map('<leader>lD', vim.lsp.buf.declaration, '[D]eclaration')
-- <leader>gc -> comment selected lines
