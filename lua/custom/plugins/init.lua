-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  --Color theme
  {
    'catppuccin/nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  'scrooloose/nerdtree',
  'ryanoasis/vim-devicons',
  'tpope/vim-fugitive',
  {
    'hedyhli/outline.nvim',
    opts = {},
  },
  'ellisonleao/gruvbox.nvim', --necessary to keep lualine from breaking
  {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      options = {
        theme = 'auto' 
      }
    }
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {},
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {},
  },
  {
    'ThePrimeagen/harpoon',
  },
  {
    'folke/trouble.nvim',
  },
  'xuhdev/vim-latex-live-preview',
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {},
  },
  'mbbill/undotree',
}
