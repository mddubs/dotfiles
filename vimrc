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
" Allow switching buffers without saving
set hidden
" Always show status bar
set laststatus=2
" Keep backup and swap clutter out of working directories
set backupdir=/tmp//
set directory=/tmp//
" Use persistent undo
set undofile
set undodir=/tmp//
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
" Clear current search highlights without disabling for next search
nnoremap <leader>/ :noh<cr>
" Paste
nnoremap <leader>p :set paste!<cr>
" Switch to current file's directory
nnoremap <leader>cd :cd %:h<cr>
" Filetype Syntax Highlighting
autocmd BufNewFile,BufRead *.conf setfiletype conf
" Reload config
nnoremap <leader>so :source $MYVIMRC<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" flazz/vim-colorschemes
let g:solarized_termcolors = 16
colorscheme solarized

" bling/vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" scrooloose/nerdtree
let NERDTreeQuitOnOpen = 1
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nc :NERDTreeCWD<cr>

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
" Disable plugin since config was generated and stored in .tmux.conf
let g:airline#extensions#tmuxline#enabled=0

" christoomey/vim-tmux-navigator
" Sets C-hjkl window movement automatically.

" lepture/vim-jinja
" Twig syntax highlighting
autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.twig setfiletype jinja

" Manually installed phpfolding.vim plugin (~/.vim/ftplugin/php)
" Folding and unfolding
"map <leader>f :set foldmethod=indent<cr>zM<cr>
"map <leader>F :set foldmethod=manual<cr>zR<cr>
