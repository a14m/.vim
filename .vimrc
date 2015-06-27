" Vundle Required Block and plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/MatchTagAlways'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'SirVer/ultisnips'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'szw/vim-ctrlspace'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-haml'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-rails'
Plugin 'ngmy/vim-rubocop'
Plugin 'vim-ruby/vim-ruby'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
syntax on
filetype plugin indent on
" End of Vundle Required Block and plugins

let mapleader = ';' " define map leader
colorscheme xoria256 "set colorscheme

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim variables
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 " set the encoding to utf-8
set t_Co=256 " set terminal color 265
set clipboard=unnamed " fix not copying between clipboard and vim
set backspace=indent,eol,start " fix backspace not deleteing existing text
set number " set numbers column on the left
set complete-=i " Faster vim completion
set nrformats-=octal " Increment numbers decimally using Ctrl+A and Ctrl+X
set autoindent " Auto indent
set smartindent "Smart indet
set smarttab
set softtabstop=2 " indentation
set tabstop=2 " indentation
set shiftwidth=2 " indentation
set expandtab " convert tabs to spaces
set ttyscroll=3 " speed up scrolling
set ttyfast " Optimize for fast terminal connections
set lazyredraw " to avoid scrolling problems
"set ttimeout " less timeout for faster navigation
"set ttimeoutlen=100 " time out for faster navigation
set incsearch " Make search act like search in modern browsers
set noignorecase " Case Senetive searching shortend noic
set hlsearch " Highlight search things shortend hls or nohls
"set ignorecase " Ignore case when searching shortend ic
set laststatus=2 " Always show the status line
set ruler " Always show current position
set showcmd " display incomplete commands
set wildmenu " Turn on Wild menu
set wildignore=*.o,*~,*.pyc " Ignore compiled files
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set undofile " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000 " How many undos
set undoreload=10000 " number of lines to save for undo
set fileformats+=mac " correct mac file format
set tabpagemax=50 " Set the maximum number of tabs allowed
set modelines=0 " disable the modelines which i don't understand
set nomodeline " disable the modelines which i don't understand
set lbr " Vim to wrap existing text as desired
set nowrap " let Vim Wrap lines or leave them as long as they get
set noeb vb t_vb=

" set vim startup faster
if !empty(&viminfo)
  set viminfo^=!
endif
" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast saving and quiting
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
cmap :Wq :wq
cmap :WQ :wq

" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"toggle folding
" set foldmethod=indent
nnoremap <space> za

"Easier window movement"
"=======================
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>ml <C-W>L
nnoremap <silent> <leader>mk <C-W>K
nnoremap <silent> <leader>mh <C-W>H
nnoremap <silent> <leader>mj <C-W>J

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set omnifunc=csscomplete#CompleteCSS
"set omnifunc=htmlcomplete#CompleteTags
"set omnifunc=phpcomplete#CompletePHP
"set omnifunc=javascriptcomplete#CompleteJS
"set omnifunc=pythoncomplete#Complete

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Specific FileTypes configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType html setlocal ts=2 sts=2 sw=2
" autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd BufNewFile,BufRead *.html.erb set filetype=html " for ruby erb template files
autocmd BufNewFile,BufRead *.json.jbuilder set filetype=ruby " for ruby json template files
autocmd BufRead,BufNewFile *.md setlocal spell " spell check md files
autocmd BufRead,BufNewFile *.markdown setlocal spell " spell check md files
autocmd FileType gitcommit setlocal spell " spell check commits
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <c-f> :call CSSBeautify()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight the 80, 120 columns
"=============================
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin maps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-Coffee"
"===========
" let coffee_make_options = '--bare' " options passed to coffee
let coffee_compile_vert = 1 " open compiled in vertical buffer
let coffee_watch_vert = 1 " open watched in vertical buffer
let coffee_run_vert = 1 " open run in vertical buffer
" nmap <silent> <leader>cr :CoffeeRun<cr>
" nmap <silent> <leader>cw :CoffeeWatch<cr>
" nmap <silent> <leader>cc :CoffeeCompile<cr>
" nmap <silent> <leader>cl :CoffeeLint<cr>
nnoremap <silent> <leader>mw :CoffeeWatch<cr>

"NerdTree"
"=========
" nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nt :NERDTree<cr>
" cmap ntf NERDTreeFind<cr>
" nmap <leader>ntq :NERDTreeClose<cr>

"NerdCommenter"
"=============
let NERDSpaceDelims = 1 " add a space after comment delimiter

"BufExp"
"======
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='name'       " Sort by file name.

"Vim-airline
"===========
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 0
"branch parts
let g:airline#extensions#branch#enabled = 1
"seperators
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
"modes
let g:airline_section_b="%{fugitive#head()}"
let g:airline_section_y=""
"let g:airline_section_gutter=""
let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#tabline#enabled = 1

"Gitgutter
"=========
let g:gitgutter_sign_column_always = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

"UltiSnips
"=========
let g:UltiSnipsExpandTrigger="<c-b>"

"CtrlP
"=====
let g:ctrlp_custom_ignore = '\v[\/](coverage|vendor|tmp|.tmp|bower_components|node_modules|dist)$'

"MatchTagAlways
"==============
let g:mta_filetypes = { 'html' : 1 }
