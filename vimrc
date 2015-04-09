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
set wildmenu       " Vim tab autocomplete
set hidden         " Allow switching buffers without saving
set laststatus=2   " Always show status bar
set guioptions=egm " Remove scrollbars
set splitright     " Split vertical windows to the right instead of left
set splitbelow     " Split horizontal windows below instead of above
autocmd BufNewFile,BufRead *.conf setfiletype conf

" Indentation
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>/ :nohlsearch<cr>|       " turn off search highlighting
nmap <leader>p :set paste!<cr>|       " toggle paste mode
nmap <leader>cd :cd %:h<cr>|          " set current directory
nmap <leader>so :source $MYVIMRC<cr>| " reload config
nmap <leader>bn :bn<cr>|              " next buffer
nmap <leader>bp :bp<cr>|              " prev buffer
nmap <leader>bl :e #<cr>|             " last buffer

" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" flazz/vim-colorschemes
colorscheme jellybeans

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
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>
nmap <leader>nc :NERDTreeCWD<cr>

" kien/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](cache|cached)|(\.(swp|ico|git|svn))$'
nmap <leader>ef :CtrlP<cr>
nmap <leader>er :CtrlPMRUFiles<cr>
nmap <leader>eb :CtrlPBuffer<cr>

" ntpeters/vim-better-whitespace
nmap <leader>wt :ToggleWhitespace<cr>
nmap <leader>ws :StripWhitespace<cr>

" tpope/vim-fugitive
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gp :Gpush<cr>
nmap <leader>gl :Gpull<cr>

" christoomey/vim-tmux-navigator
" Sets C-hjkl window movement automatically.

" lepture/vim-jinja
" Twig syntax highlighting
autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.twig setfiletype jinja

" Manually installed phpfolding.vim plugin (~/.vim/ftplugin/php)
" Folding and unfolding
"map <leader>f :set foldmethod=indent<cr>zM<cr>
"map <leader>F :set foldmethod=manual<cr>zR<cr>
