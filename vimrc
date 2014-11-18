execute pathogen#infect()
syntax enable
set t_Co=256
colorscheme Tomorrow-Night
syntax on
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
filetype indent on

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent
set iskeyword-=_

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set cpoptions+=$
set guifont=Source\ Code\ Pro\ for\ Powerline:h14 "make sure to escape the spaces in the name properly

let mapleader = ","
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set list listchars=tab:»·,trail:·
set splitbelow
set splitright
set clipboard=unnamed

"" Vim mapping
""" Re-indent current file
map <F7> mzgg=G`z<CR>
""" Splitting
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"" Plugins setting
"" dash.vim
nmap <silent> <leader>d <Plug>DashSearch
"" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set runtimepath^=~/.vim/bundle/ctrlp.vim
"" NERDTree
map <C-n> :NERDTreeToggle<CR>

"" Tmux
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"" Vimux
" Prompt for a command to run
map <leader>rp :VimuxPromptCommand
" Run last command executed by RunVimTmuxCommand
map <leader>rl :VimuxRunLastCommand
" Interrupt any command running in the runner pane
map <leader>rs :VimuxInterruptRunner
map <leader>rta :call VimuxRunCommand("clear; rake test:all:db")<CR>
