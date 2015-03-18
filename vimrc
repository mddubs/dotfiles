" Matt Williamson's VIM configuration.

" First, load plugins
source ~/.dotfiles/vimrc.vundles

" SWAP/BACKUP/UNDO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create /tmp directories if they don't exist
if isdirectory('/tmp/vim/') == 0
    :silent !mkdir -p '/tmp/vim/swap/' '/tmp/vim/backup' '/tmp/vim/undo/'
endif
set directory=/tmp/vim/swap//
set backupdir=/tmp/vim/backup//
set undofile
set undodir=/tmp/vim/undo//

" SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set number
set cursorline
set incsearch
set hlsearch
set wildmenu " Vim tab autocomplete
set hidden " Allow switching buffers without saving
set laststatus=2 " Always show status bar
set guioptions=egm " Remove scrollbars
set splitright " Split vertical windows to the right instead of left

" Indentation
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>cd :cd %:h<cr>
autocmd BufNewFile,BufRead *.conf setfiletype conf
nnoremap <leader>so :source $MYVIMRC<cr>

" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" flazz/vim-colorschemes
colorscheme bubblegum

" bling/vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" edkolev/tmuxline.vim
" Disable auto theme once tmux.conf is setup for customized file.
let g:airline#extensions#tmuxline#enabled=0
" Fix off black background issues when running vim in tmux:
" http://stackoverflow.com/questions/6427650/vim-in-tmux-background-color-changes-when-paging
:set t_ut=

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

" christoomey/vim-tmux-navigator
" Sets C-hjkl window movement automatically.

" lepture/vim-jinja
" Twig syntax highlighting
autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.twig setfiletype jinja

" Manually installed phpfolding.vim plugin (~/.vim/ftplugin/php)
" Folding and unfolding
"map <leader>f :set foldmethod=indent<cr>zM<cr>
"map <leader>F :set foldmethod=manual<cr>zR<cr>
