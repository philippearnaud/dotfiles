" Following lines added by drush vimrc-install on Wed, 22 Jul 2015 15:40:10 +0000.
set nocompatible
call pathogen#infect('/Users/Philippe/.drush/vimrc/bundle/{}')
call pathogen#infect('1/bundle/{}')
filetype plugin on
" End of vimrc-install additions.
"
execute pathogen#infect()
set encoding=utf-8
filetype indent plugin on
syntax on
filetype on
syntax enable
set omnifunc=phpcomplete#CompletePHP
set nu
set tabstop=2
set columns=80
set shiftwidth=2
set expandtab
set showmatch
set ttimeoutlen=100
set background=dark
set lazyredraw
colorscheme solarized
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_termcolors=16
let g:airline_theme = 'powerlineish'
let g:airline#extension#tmuxline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
endif
set t_Co=256
set term=screen-256color
set copyindent
set showmode
set undolevels=1000
set title
set noswf
set vb
set mouse=a
set cursorline
set ic
set laststatus=2
set ignorecase
set hlsearch
set incsearch
set ruler
set ttyfast
set autoindent
set smartindent
set showcmd
set runtimepath^=~/.vim/bundle/ctrlp.vim
set encoding=utf-8
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

if version >= 700
				  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
				  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
		endif

		highlight ExtraWhitespace ctermbg=1 guibg=red
		match ExtraWhitespace /\s\+$/
		autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
		autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
		autocmd InsertLeave * match ExtraWhitespace /\s\+$/
		autocmd BufWinLeave * call clearmatches()


autocmd bufNewfile *.py :0r ~/.vim/templates/py
autocmd bufNewfile index.html :0r ~/.vim/templates/html
autocmd bufNewfile *.sh :0r ~/.vim/templates/bash

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

if has("autocmd")
    " Drupal *.module and *.install files.
    augroup module
      autocmd BufRead,BufNewFile *.module set filetype=php
      autocmd BufRead,BufNewFile *.install set filetype=php
      autocmd BufRead,BufNewFile *.test set filetype=php
      autocmd BufRead,BufNewFile *.inc set filetype=php
      autocmd BufRead,BufNewFile *.profile set filetype=php
      autocmd BufRead,BufNewFile *.view set filetype=php
    augroup END
endif

let g:Powerline_symbols = 'fancy'
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

let g:syntastic_javascript_checkers = ['jshint2']

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set dict +=~/.vim/dictionaries/drupal6.dict

