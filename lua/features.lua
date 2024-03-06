return {
  { 'simrat39/symbols-outline.nvim', opts = {} },
  --the first line being the first line of the function you are in.
  { 'nvim-treesitter/nvim-treesitter-context' },
  --Splash screen
  {
    'echasnovski/mini.starter',
    version = false,
    config = {
      header = 'ahoy, bloops',
    },
  },
  --{ 'gelguy/wilder.nvim', config = {
  --modes = { ':' },
  --} },
  --{ 'smolck/command-completion.nvim', setup = { border = nil, use_matchfuzzy = true } },
  { 'kassio/neoterm' },
}
