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

" NERDTree
":nnoremap <unique> <leader>n :NERDTreeToggle<CR> 
:nnoremap <leader>n :NERDTreeToggle<CR> 

" Airline
set laststatus=2
let g:airline_powerline_fonts=1

" Vim-Colorschemes
colorscheme peaksea
