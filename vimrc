call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader = ';' " define map leader

"fix not copying between clipboard and vim
vmap <leader>y :w !pbcopy<CR><CR>
set clipboard=unnamed

"fix backspace not deleteing existing text
set backspace=indent,eol,start 
set whichwrap+=<,>,h,l

"set numbers column on the left
set number

"set colorscheme
colorscheme xoria256

" Sets how many lines of history VIM has to remember
" set history=700

syntax on

" display incomplete commands
set showcmd         

"disable the modelines which i don't understand
set modelines=0
set nomodeline

" Set to auto read when a file is changed from the outside
set autoread

" Ignore compiled files 
set wildignore=*.o,*~,*.pyc

" Abbreviate messages
"set shortmess=atI   

" don't jump to first character when paging
"set nostartofline   

cmap :Wq :wq
cmap :WQ :wq


" Fast saving
nmap <leader>w :w!<cr>

" Fast quiting
nmap <leader>q :q<cr>
 
" Fast editing of the .vimrc
"map <leader>e :vsp ~/.vimrc<cr>
map <leader>e :vsp ~/.vim/ultisnips/php.snippets<cr>

"toggle folding
nnoremap <space> za

" Set 7 lines to the curors - when moving vertical..
"set so=7

"Turn on WiLd menu
set wildmenu 

" Always show the status line
set laststatus=2
" Format the status line


"Always show current position
set ruler 

"The commandbar height
"set cmdheight=1 

"set hid "Change buffer - without saving

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
"set nolazyredraw 

"Set magic on, for regular expressions
set magic 

"Show matching bracets when text indicator is over them
set showmatch 


set lbr

"Auto indent
set ai 

"Smart indet
set si 

"indentation
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

" set a vertical colomn at char 80
"set colorcolumn=80
 
"Wrap lines
set wrap

"set visiual bell
set vb


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=csscomplete#CompleteCSS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=phpcomplete#CompletePHP
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=pythoncomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
"nmap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

""filetype options
"================
:filetype on
:filetype plugin on

"highlight curser line
"=====================
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
":nnoremap <leader>cc :set cursorline!<CR>


"Easier window movement"
"=======================
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>l :wincmd l<CR>
nmap <silent> <leader>sb :wincmd p<CR>
nmap <silent> <leader>cj :wincmd j<CR>:close<CR>
nmap <silent> <leader>ck :wincmd k<CR>:close<CR>
nmap <silent> <leader>ch :wincmd h<CR>:close<CR>
nmap <silent> <leader>cl :wincmd l<CR>:close<CR>
"noremap <silent> <leader>cc :close<CR>
"noremap <silent> <leader>cw :cclose<CR>
nmap <silent> <leader>ml <C-W>L
nmap <silent> <leader>mk <C-W>K
nmap <silent> <leader>mh <C-W>H
nmap <silent> <leader>mj <C-W>J
"noremap <silent> <leader>o <C-W>o

"==========="
"Plugin maps"
"==========="

"NerdTree"
"=========
nmap <leader>nt :NERDTreeToggle<cr>
"cmap ntf NERDTreeFind<cr>
"nmap <leader>ntq :NERDTreeClose<cr>

"SuperTab"
"=========

"UltiSnips"
"==========
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"python special configs"
"========
" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see all errors)
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" More syntax highlighting.
let python_highlight_all = 1

"auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
inoremap <Nul> <C-x><C-o>
