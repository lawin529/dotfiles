local status, packer = pcall(require, "packer")
if(not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = { 'src/parser.c', 'src/scanner.cc' },
  },
  filetype = 'org',
}

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'nvim-lualine/lualine.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  
  use {'nvim-treesitter/nvim-treesitter', run = function()
    require('nvim-treesitter.install').update({ with_sync = true })
  end
  }

  use {'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup{}
  end
  }
end)
