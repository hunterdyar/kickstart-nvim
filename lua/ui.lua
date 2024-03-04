-- NVim Tree
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
      vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeOpen<CR>', { desc = 'Open [E]xplorer' })
    end,
  },
  --color schemes
  { 'morhetz/gruvbox' },
  { 'sainnhe/everforest' },
  { 'catppuccin/nvim' },
  { 'rebelot/kanagawa.nvim' },
  { 'folke/tokyonight.nvim' },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'rebelot/kanagawa.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here
      vim.cmd.colorscheme 'kanagawa-dragon'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  -- transparency handled by plugins
  { 'tribela/vim-transparent' },
  -- gutter marks
  {
    'chentoast/marks.nvim',
    opts = {
      builtin_marks = { '.', '<', '>', '^', "'", '"', '}', '{' },
      sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
    },
  },
  -- cheatsheet
  {
    'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    },
    config = {
      bundled_cheatsheets = {
        enabled = { 'default' },
        disabled = { 'nerd-fonts' },
      },
      include_only_installed_plugins = true,
    },
  },
}
