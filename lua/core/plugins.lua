local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-telescope/telescope.nvim'
  use 'folke/todo-comments.nvim'
  use 'github/copilot.vim'
  use 'zadirion/Unreal.nvim'
  use 'ludovicchabant/vim-gutentags'
  use 'neoclide/coc.nvim'
  use 'liuchengxu/vim-which-key'
  use 'derekwyatt/vim-fswitch'
  use 'tyru/open-browser.vim'
  use 'tyru/open-browser-github.vim'
  use 'liuchengxu/vista.vim'
  use 'folke/noice.nvim'

  -- Dependencies
  use 'nvim-lua/plenary.nvim'
  use 'folke/trouble.nvim'
  use 'tpope/vim-dispatch'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
