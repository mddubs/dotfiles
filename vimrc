" Matt Williamson's VIM configuration.

" First, load plugins
source ~/dotfiles/vimrc.vundles

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
syntax on
set number
set cursorline
set incsearch
set hlsearch
" Keep backup and swap clutter out of working directories
set backupdir=/tmp//
set directory=/tmp//
" Remove scrollbars
set guioptions=egm
" Set fullscreen on startup
if has('gui_running')
    set fu
endif
" Indentation
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" Split vertical windows to the right instead of left
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scrooloose/nerdtree
":nnoremap <unique> <leader>n :NERDTreeToggle<cr>
nnoremap <leader>n :NERDTreeToggle<cr>

" flazz/vim-colorschemes
let g:solarized_termcolors = 16
colorscheme solarized
"colorscheme ir_black

" bling/vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

" kien/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](cache|cached)|(\.(swp|ico|git|svn))$'
nnoremap <leader>ef :CtrlP<cr>
nnoremap <leader>er :CtrlPMRUFiles<cr>
nnoremap <leader>eb :CtrlPBuffer<cr>

" ntpeters/vim-better-whitespace
nnoremap <leader>wt :ToggleWhitespace<cr>
nnoremap <leader>ws :StripWhitespace<cr>

" tpope/vim-fugitive
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gr :Gread<cr>

" edkolev/tmuxline.vim
"let g:tmuxline_theme='vim_status_line_3'
"let g:tmuxline_preset='jellybeans'
let g:airline#extensions#tmuxline#enabled=0

" christoomey/vim-tmux-navigator
" Sets C-hjkl window movement automatically.
