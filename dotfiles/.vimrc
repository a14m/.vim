execute pathogen#infect()
syntax on
:filetype plugin indent on

let mapleader = ';' " define map leader

"set colorscheme
colorscheme xoria256 

" Make Vim more useful
set nocompatible

" Optimize for fast terminal connections
set ttyfast

set clipboard=unnamed "fix not copying between clipboard and vim

"fix backspace not deleteing existing text
set backspace=indent,eol,start
"set whichwrap+=<,>,h,l

"set numbers column on the left
set number 

"use old regex faster engine
set re=1

"auto reload the changed files without prompting
"set autoread

"sets how many lines of history VIM has to remember
"set history=700 

"Save undo's after file closes
set undofile
"where to save undo histories
set undodir=$HOME/.vim/undo
"How many undos
set undolevels=1000
"number of lines to save for undo
set undoreload=10000        

"display incomplete commands
set showcmd

"disable the modelines which i don't understand
set modelines=0
set nomodeline

"Ignore compiled files 
set wildignore=*.o,*~,*.pyc

"set the encoding to utf-8
set encoding=utf-8
" Don’t add empty newlines at the end of files
" set binary
" set noeol

"Set 7 lines to the curors - when moving vertical..
"set so=7

"Turn on Wild menu
set wildmenu 
" Prevent command line completion cycle effect
"set wildmode=list:longest 

" Always show the status line
set laststatus=2 

"Always show current position
set ruler

"The commandbar height
"set cmdheight=1

"Change buffer - without saving
"set hid

"Case Senetive searching shortend noic
set noignorecase
"Ignore case when searching shortend ic
"set ignorecase
"set smartcase
"Highlight search things shortend hls or nohls
set hlsearch
"Make search act like search in modern browsers
set incsearch

"Don't redraw while executing macros 
set nolazyredraw
"
"Set magic on, for regular expressions
set magic

"Show matching bracets when text indicator is over them
set showmatch
"ruby match do/end
runtime macros/matchit.vim

set lbr
set ai "Auto indent
set si "Smart indet

"indentation
set softtabstop=2
set tabstop=2
set shiftwidth=2
"specific files indentation specs
" autocmd Filetype html setlocal ts=2 sts=2 sw=2
" autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
set expandtab

"set colorcolumn=80 " set a vertical colomn at char 80
 
"let Vim Wrap lines or leave them as long as they get
"set wrap
set nowrap

"set visiual and error bells
"set vb
"set eb
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

"Abbreviate messages
"set shortmess=atI

"don't jump to first character when paging
"set nostartofline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set omnifunc=csscomplete#CompleteCSS
"set omnifunc=htmlcomplete#CompleteTags
"set omnifunc=phpcomplete#CompletePHP
"set omnifunc=javascriptcomplete#CompleteJS
"set omnifunc=pythoncomplete#Complete

"ruby and rails onmifunc
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"Fast saving
nmap <leader>w :w<cr>
"Fast quiting
nmap <leader>q :q<cr>
cmap :Wq :wq
cmap :WQ :wq

"Fast editing of the .vimrc
"map <leader>e :vsp ~/.vimrc<cr>

"toggle folding
" set foldmethod=indent
nnoremap <space> za
"auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
inoremap <Nul> <C-x><C-o>

"Easier window movement"
"=======================
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>l :wincmd l<CR>
"nmap <silent> <leader>p :wincmd p<CR>
"nmap <silent> <leader>cj :wincmd j<CR>:close<CR>
"nmap <silent> <leader>ck :wincmd k<CR>:close<CR>
"nmap <silent> <leader>ch :wincmd h<CR>:close<CR>
"nmap <silent> <leader>cl :wincmd l<CR>:close<CR>
"noremap <silent> <leader>cc :close<CR>
"noremap <silent> <leader>cw :cclose<CR>
nmap <silent> <leader>ml <C-W>L
nmap <silent> <leader>mk <C-W>K
nmap <silent> <leader>mh <C-W>H
nmap <silent> <leader>mj <C-W>J
"noremap <silent> <leader>o <C-W>o

"move in lines as you see them not as they are wrapped
"nmap j gj
"nmap k gk
"nmap > gv>
"nmap < gv<

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remove the Windows ^M - when the encodings gets messed up
"nmap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"highlight curser line
"=====================
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
":nnoremap <leader>cc :set cursorline!<CR>
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn
":nnoremap <leader>HC :set cursorcolumn!<CR>

"==========="
"Plugin maps"
"==========="

"NerdTree"
"=========
nmap <leader>nt :NERDTreeToggle<cr>
" nmap <leader>nt :NERDTree<cr>
" cmap ntf NERDTreeFind<cr>
" nmap <leader>ntq :NERDTreeClose<cr>

"NerdCommenter"
"=============
let NERDSpaceDelims = 1 " add a space after comment delimiter


"BufExp"
"======
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='name'       " Sort by file name.

"UltiSnips"
"==========
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

"Vim-airline
"===========
let g:airline_theme='powerlineish'
"branch parts
let g:airline_enable_branch=1
"seperators
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
"modes
let g:airline_section_y=""
"let g:airline_section_gutter=""
let g:airline_detect_whitespace=0
set ttimeoutlen=50

"Syntastic plugin
"================
augroup mine
    au BufWinEnter * sign define mysign
    au BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')
augroup END
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': ['ruby'],
                     \ 'passive_filetypes': ['html','java'] }

"vim-beautify plugin for js-html-css
"================
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr> "for javascript
autocmd BufNewFile,BufRead *.html.erb set filetype=html "for ruby erb template files
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr> "for Html
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr> "for css or scss

"python special configs"
"========
" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see all errors)
"set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" More syntax highlighting.
"let python_highlight_all = 1

"Highlight the 80, 120 columns
"=============================
highlight ColorColumn ctermbg=235 guibg=#2c2d27
" let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
