" .config/nvim/init.vim, neovim config
" source: https://github.com/pricheal/dotfiles

set nowrap " set nowrap by default
set hidden " allow unsaved buffers to be put in the background
set number " enable line numbers
set mouse=a " enable mouse
set nofixendofline " disable fix end of line thing

let mapleader = "," " change leader to comma

" install vim plug if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
Plug 'chriskempson/base16-vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sleuth'
call plug#end()

" source lua lsp config file
lua require("lsp")
