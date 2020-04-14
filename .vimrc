"Define plugins with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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

syntax on
set number relativenumber
set tabstop=2
set shiftwidth=2
set noexpandtab
set laststatus=2
set noshowmode
set backspace=indent,eol,start
set spelllang=en_us

let g:coc_global_extensions = [
	\ 'coc-tsserver',
	\ 'coc-pairs',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ ]

set termguicolors
colorscheme gruvbox


" Key mappings/bindings
let mapleader = ","
map <tab> :NERDTreeToggle<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Tab Completion for COC
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
 	\ <SID>check_back_space() ? "\<TAB>" :
 	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Show Documentation in Preview for COC
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol and its references on cursor hover for COC
autocmd CursorHold * silent call CocActionAsync('highlight')

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

