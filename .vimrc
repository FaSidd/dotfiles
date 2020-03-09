syntax on
set number relativenumber
set tabstop=4
set shiftwidth=4
set noexpandtab
set laststatus=2
set noshowmode
set backspace=indent,eol,start
set rtp+=/usr/local/opt/fzf
set spelllang=en_us
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"let g:gruvbox_contrast_dark='dark'
"let g:gruvbox_termcolors = '256'
set background=dark
let g:edge_style = 'proton'
let g:edge_disable_italic_comment = 1
let mapleader = ","
if (has('termguicolors'))
	set termguicolors
endif
colorscheme edge
"let g:lightline = { 'colorscheme': 'material_vim' }
map <tab> :NERDTreeToggle<CR>
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('cpp', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('py', 'cyan', 'none', 'cyan', '#151515')

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'tmux-plugins/vim-tmux'
"Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround' 
Plugin 'kaicataldo/material.vim'
Bundle 'morhetz/gruvbox'
Bundle 'edkolev/tmuxline.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'sainnhe/edge'
Plugin 'sheerun/vim-polyglot'
call vundle#end()            " required
filetype plugin indent on    " required
