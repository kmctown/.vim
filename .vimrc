execute pathogen#infect()

let mapleader = " "

syntax on
set number

set background=dark
colorscheme solarized

set guifont=OperatorMonoLig\ Nerd\ Font:h16

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" set tabs to 4 spaces
set ts=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" set tabs/spaces to 2 for js(x)
autocmd BufRead *.js,*.jsx,*.html set shiftwidth=2
autocmd BufRead *.js,*.jsx,*.html set ts=2

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Airline
let g:airline#extensions#tabline#enabled = 1                                                                      
let g:airline#extensions#tabline#left_sep = ' '                                                                   
let g:airline#extensions#tabline#left_alt_sep = '|'                                                               
let g:airline_exclude_preview=1

" Window/tab management
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <Leader>w :Bdelete<CR>

" Ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTree

" Open NERDTree with LEADER-n
map <Leader>n :NERDTreeToggle<CR>

" Open NERDTree when opening vim on a directory (i.e. vim .)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Files for NERDTree to ignore
let NERDTreeIgnore = ['\.pyc$']

" Set the padding after NERDTree icons
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:prettier#exec_cmd_path = "/usr/local/bin/prettier"
let g:prettier#exec_cmd_async = 1

