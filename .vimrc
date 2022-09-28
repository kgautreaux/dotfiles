"Fuzzy finding without plugins by appending to path
set path+=**

"Fix syntax coloring in tmux
set t_Co=256

" Syntax highlighting
syntax on

" Set leader to space
let mapleader = "\<Space>"

" Autoindent
filetype plugin indent on

" Numbering in the gutter
set number

" Change the gutter number appearance
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Set highlight incremental search
set hls is

" Autoindent
set autoindent

" Show the ruler
set ruler

" Show the command selection next to the ruler
set showcmd

" Set tabs correctly for ruby
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab

" Set tabs correctly for html
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab

" Set tabs correctly for javascript
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

" Set tabs correctly for elixir
autocmd FileType elixir set tabstop=2|set shiftwidth=2|set expandtab

" Set colorscheme
colors blackboard

" Shortcut to rapidly toggle `set list`
nmap <D-l> :set list!<CR>
"
"Remap backtick to escape for Apple Smart Keyboard for iPad Pro
:imap ` <Esc>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list!

" Bash like tab completion
if has("wildmenu")
    set wildignore+=*.a,*.o
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore+=.DS_Store,.git,.hg,.svn
    set wildignore+=*~,*.swp,*.tmp
    set wildmenu
    set wildmode=longest,list
endif

" Tab complete filenames in insert mode
"inoremap <Tab> <C-X><C-F>

" Split windows correctly
set splitbelow
set splitright

" No swapfiles in cwd
set directory=~/.vim/swap 

" Set nohlsearch when pressing enter (thanks Gary!)
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

" Map <Leader>t to run test
nmap <Leader>t :TestFile<CR>

"enable autocompleteion via ale
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
