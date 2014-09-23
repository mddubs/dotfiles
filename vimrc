" Matt Williamson
" This is my own VIM configuration, starting from scratch.
" ln -s ~/dotfiles/vimrc ~/.vimrc

" Reload vim config without restarting
" :so %    (current file)
" :so $MYVIMRC

" First, load plugins
source ~/.vimrc.vundles



" BASIC SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :echo &background
set background=dark
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
syntax on
"set number!
set guioptions=egm
if has('gui_running')
    set fu
endif

" Easy window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>



" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" scrooloose/nerdtree
":nnoremap <unique> <leader>n :NERDTreeToggle<CR>
nnoremap <c-n> :NERDTreeToggle<CR>

" bling/vim-airline
set laststatus=2
let g:airline_powerline_fonts=1

" flazz/vim-colorschemes
"colorscheme peaksea
colorscheme molokai

" kien/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](cache|cached)|(\.(swp|ico|git|svn))$'

" ntpeters/vim-better-whitespace
" :StripWhitespace

" tpope/vim-fugitive
nnoremap <leader>gs :Gstatus<CR>
