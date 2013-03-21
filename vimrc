call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader = ';' " define map leader

"set numbers column on the left
set number

"set colorscheme
colorscheme xoria256

" Sets how many lines of history VIM has to remember
" set history=700

syntax on

" display incomplete commands
set showcmd         

" last lines in document sets vim mode
"set modeline        

" number lines checked for modelines
"set modelines=3

" Abbreviate messages
"set shortmess=atI   

" don't jump to first character when paging
"set nostartofline   

cmap :Wq :wq
cmap :WQ :wq


"set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent


" Fast saving
nmap <leader>w :w!<cr>

" Fast quiting
nmap <leader>q :q<cr>
 
" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" reload it
nmap<leader>re :w<cr>:so %<cr>

" Set 7 lines to the curors - when moving vertical..
"set so=7

"set wildmenu "Turn on WiLd menu

set ruler "Always show current position

"set cmdheight=1 "The commandbar height

"set hid "Change buffer - without saving

set noignorecase "Case Senetive searching
"set ignorecase "Ignore case when searching

"set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
"set mat=2 "How many tenths of a second to blink


set lbr

"Auto indent
set ai 

"Smart indet
set si 

"indentation
set expandtab
set shiftwidth=4
set softtabstop=4

" set a vertical colomn at char 80
"set colorcolumn=80
 
"Wrap lines
set wrap

set vb
set backspace=indent,eol,start "fix backspace not deleteing existing text
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
nmap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

""filetype options
"================
:filetype on
:filetype plugin on

"highlight curser line
"=====================
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
":nnoremap <leader>cc :set cursorline!<CR>

"copy between terminal and clipboard
"===================================
"set clipboard=unnamed

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
cmap ntf NERDTreeFind<cr>
"nmap <leader>ntq :NERDTreeClose<cr>

"SuperTab"
"========


"python special configs"
"========
" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see all errors)
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" More syntax highlighting.
let python_highlight_all = 1

"auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
inoremap <Nul> <C-x><C-o>
