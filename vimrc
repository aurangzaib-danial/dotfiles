call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'lifepillar/vim-solarized8'

" Ruby
Plug 'vim-ruby/vim-ruby'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

"" Shortcuts start
let mapleader = ","

" toggle background light/dark
nnoremap <expr><leader>b &background == 'light' ? ':set bg=dark<cr>' : ':set bg=light<cr>'

"" Shorcuts end

" Write swp files to /tmp instead of current directory
set number
set swapfile
set dir=/tmp

set splitright
set splitbelow

" Two space tabs
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Easy access to the start of the line
" nmap 0 ^

" move updown by visual (wrapped) lines
noremap j gj
noremap k gk

" Don't wrap long lines
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

" No error bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

if has("gui_running")
  set guifont=Menlo:h14
  set background=dark
  autocmd vimenter * ++nested colorscheme solarized8
  let g:solarized_old_cursor_style = 1
endif
