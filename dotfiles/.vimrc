execute pathogen#infect()
syntax on
:filetype plugin indent on

let mapleader = ';' " define map leader

colorscheme xoria256 "set colorscheme

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim variables
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " Make Vim more useful
set ttyfast " Optimize for fast terminal connections
set clipboard=unnamed " fix not copying between clipboard and vim
set backspace=indent,eol,start " fix backspace not deleteing existing text
"set whichwrap+=<,>,h,l
set number " set numbers column on the left
set re=1 " use old regex faster engine
"set autoread "auto reload the changed files without prompting
"set history=700 "sets how many lines of history VIM has to remember
set undofile " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000 " How many undos
set undoreload=10000 " number of lines to save for undo
set showcmd " display incomplete commands
set modelines=0 " disable the modelines which i don't understand
set nomodeline " disable the modelines which i don't understand
set wildignore=*.o,*~,*.pyc " Ignore compiled files
set encoding=utf-8 " set the encoding to utf-8
" set binary " Don’t add empty newlines at the end of files
" set noeol " Don’t add empty newlines at the end of files
"set so=7 " Set 7 lines to the curors - when moving vertical..
set wildmenu " Turn on Wild menu
"set wildmode=list:longest " Prevent command line completion cycle effect
set laststatus=2 " Always show the status line
set ruler " Always show current position
"set cmdheight=1 "The commandbar height
"set hid " Change buffer - without saving
set noignorecase " Case Senetive searching shortend noic
"set ignorecase " Ignore case when searching shortend ic
"set smartcase
set hlsearch " Highlight search things shortend hls or nohls
set incsearch " Make search act like search in modern browsers
set nolazyredraw " Don't redraw while executing macros
set magic " Set magic on, for regular expressions
set showmatch " Show matching bracets when text indicator is over them
runtime macros/matchit.vim " ruby match do/end
set lbr
set ai "Auto indent
set si "Smart indet
set softtabstop=2 " indentation
set tabstop=2 " indentation
set shiftwidth=2 " indentation
set expandtab " convert tabs to spaces
"set colorcolumn=80 " set a vertical colomn at char 80
"set wrap " let Vim Wrap lines or leave them as long as they get
set nowrap " let Vim Wrap lines or leave them as long as they get
"set vb " set visiual and error bells
"set eb " set visiual and error bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
"set shortmess=atI " Abbreviate messages
"set nostartofline " don't jump to first character when paging
set ttimeoutlen=50 " faster timeout not to halt




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set omnifunc=csscomplete#CompleteCSS
"set omnifunc=htmlcomplete#CompleteTags
"set omnifunc=phpcomplete#CompletePHP
set omnifunc=javascriptcomplete#CompleteJS
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
autocmd BufNewFile,BufRead *.html.erb set filetype=html " for ruby erb template files
autocmd BufNewFile,BufRead *.json.jbuilder set filetype=ruby " for ruby json template files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast saving and quiting
nmap <leader>w :w<cr>
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

"Highlight the 80, 120 columns
"=============================
highlight ColorColumn ctermbg=235 guibg=#2c2d27
" let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")

"python special configs"
"========
" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see all errors)
"set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" More syntax highlighting.
"let python_highlight_all = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin maps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"SuperTab"
"=========
let g:SuperTabDefaultCompletionType = "<c-n>" " correct supertab direction

"UltiSnips"
"==========
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsExpandTrigger="<c-b>"
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

"Syntastic plugin
"================
augroup mine
    au BufWinEnter * sign define mysign
    au BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')
augroup END

let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html','javascript'] }


"vim-beautify
"============
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr> "for javascript
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr> "for Html
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr> "for css or scss
