" Matt Williamson
" This is my own VIM configuration, starting from scratch.
" ln -s ~/dotfiles/vimrc ~/.vimrc

" Reload vim config without restarting
" :so %    (current file)
" :so $MYVIMRC

" First, load plugins
source ~/.vimrc.vundles

" Set background dark or light
" :echo &background
set background=dark

" Set font
set guifont=Meslo\ LG\ S\ for\ Powerline:h12

" Turn on syntax highlighting
syntax on

" scrooloose/nerdtree
":nnoremap <unique> <leader>n :NERDTreeToggle<CR>
:nnoremap <leader>n :NERDTreeToggle<CR>

" bling/vim-airline
set laststatus=2
let g:airline_powerline_fonts=1

" flazz/vim-colorschemes
colorscheme peaksea

" kien/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](cache|cached)|(\.(swp|ico|git|svn))$'

" ntpeters/vim-better-whitespace
" :StripWhitespace
