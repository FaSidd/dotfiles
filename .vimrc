syntax on
set number relativenumber
set tabstop=4
set shiftwidth=4
set noexpandtab
set laststatus=2
set noshowmode
set backspace=indent,eol,start
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
" NERDTree File highlighting
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

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'tmux-plugins/vim-tmux'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround' 
Plug 'kaicataldo/material.vim'
Plug 'morhetz/gruvbox'
Plug 'edkolev/tmuxline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'sainnhe/edge'
Plug 'sheerun/vim-polyglot'
call plug#end()
