" View
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'

Bundle 'Lokaltog/vim-powerline'

set laststatus=2
let g:Powerline_symbols = 'compatible'

Bundle 'tomasr/molokai'
Bundle 'kien/ctrlp.vim'

Bundle 'scrooloose/nerdtree'
map <C-n> :execute 'NERDTreeToggle ' . getcwd()<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeChDirMode=2
" show hidden files
let NERDTreeShowHidden=1

let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeMouseMode=2

" syntax
Bundle 'vim-scripts/indenthtml.vim'
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'

Bundle 'plasticboy/vim-markdown'
Bundle 'wavded/vim-stylus'

Bundle 'mattn/zencoding-vim'

Bundle 'Townk/vim-autoclose'
