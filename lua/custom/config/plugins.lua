require('lspconfig').html.setup{
  filetypes = { "html", "templ", "htmldjango" }
}
local pid = vim.fn.getpid()
local omnisharp_bin = vim.fn.expand("/usr/bin/OmniSharp")
require('lspconfig').omnisharp.setup{
  cmd = {omnisharp_bin, "--languageserver", "--hostpid", tostring(pid) },
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
vim.g.agda_extraincpaths = {"/usr/share/agda/lib/stdlib"}
require('catppuccin').setup({
  flavour = 'macchiato',
  -- flavour = 'amogus',
  transparent_background = true,
  integrations = {
    harpoon = true,
    indent_blankline = true,
    mason = true,
    cmp = true,
    notify = true,
    treesitter = true,
    treesitter_context = true,
    telescope = true,
    which_key = true,
    lsp_trouble = true,
    mini = {
      enabled = true,
      indentscope_color = "lavender",
    },
    fidget = true
  },
})
--Default comment colors suck
-- vim.cmd.hi 'Comment term=italic ctermfg=Cyan guifg=#b5560d gui=italic'
vim.cmd.colorscheme 'catppuccin'
vim.cmd.hi 'Comment term=italic ctermfg=Cyan guifg=#80a0ff gui=italic'
vim.cmd.hi 'LineNr ctermfg=Cyan guifg=#80a0ff'
require('fidget').setup {
  notification = {
    window = {
      winblend = 0,
    },
  }
}
require('nvim-treesitter.configs').setup {
  modules = {},
  sync_install = true,
  ignore_install = {},
  auto_install = true,
  ensure_installed = {
    'cmake',
    'comment',
    'cpp',
    'c_sharp',
    'c',
    'css',
    'csv',
    'diff',
    'dockerfile',
    'doxygen',
    'elixir',
    'fortran',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'git_rebase',
    'haskell',
    'hlsplaylist',
    'html',
    'http',
    'hyprlang',
    'javascript',
    'java',
    'json',
    'latex',
    'lua',
    'make',
    'nim',
    'ocaml',
    'printf',
    'python',
    'regex',
    'rust',
    'sql',
    'toml',
    'typescript',
  },
}
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    -- theme = 'catppuccin',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
