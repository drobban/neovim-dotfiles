require("drobban")

local execute = vim.api.nvim_command
local fn = vim.fn
local fmt = string.format

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
{
  'projekt0n/github-nvim-theme',
  config = function()
  end},
{'nvim-treesitter/nvim-treesitter', run =':TSUpdate'},
{'hrsh7th/cmp-vsnip'},
{'wbthomason/packer.nvim'},
{'neovim/nvim-lspconfig'},
{'hrsh7th/nvim-cmp'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/cmp-buffer'},
{'hrsh7th/cmp-path'},
{'hrsh7th/cmp-cmdline'},
{'hrsh7th/vim-vsnip'},
{'slashmili/alchemist.vim'},
{'elixir-editors/vim-elixir'},
{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim",        -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = true
},
{'elixir-editors/vim-elixir'},
{
  'nvim-lualine/lualine.nvim',
  dependencies = {
	{ 'nvim-tree/nvim-web-devicons', opt = true }
  }
},
{
  'crusj/bookmarks.nvim',
  keys = {
      { "<tab><tab>", mode = { "n" } },
  },
  branch = 'main',
  dependencies = { 'nvim-web-devicons' },
  config = function()
      require("bookmarks").setup()
      require("telescope").load_extension("bookmarks")
  end
},
{
	'j-morano/buffer_manager.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
}
})
