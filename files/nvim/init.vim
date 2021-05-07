let g:ackprg = 'ag --nogroup --nocolor --column'

set number
set mouse=a
set ai
set hlsearch
set ruler
set cursorline
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set smartindent
set nocompatible
set encoding=utf-8
syntax on

let g:airline_powerline_fonts = 1
" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
Plug 'ianks/vim-tsx'
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0ng/vim-hybrid'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'miyakogi/seiya.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tmux-plugins/vim-tmux'

call plug#end()

au BufNewFile,BufRead *.ts setlocal filetype=typescript
  au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

let g:airline_theme='minimalist'

let g:seiya_auto_enable=1

colorscheme dracula

augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver25
augroup END

map q :quit<CR>
map <C-s> :write<CR>

