" vimrc
set showtabline=2
set nobomb
set title
set nobackup        " no backup file
set noswapfile      " no swap file

set list listchars=tab:»·,trail:·

set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set ruler
"set cursorline
"set cursorcolumn
set pastetoggle=<F9>
set hlsearch
set incsearch

" disable splashscreen
set shortmess+=I

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" Setting Highlight color
"hi CursorColumn   ctermbg=black
"hi CursorLine     ctermbg=black
hi LineNr         ctermbg=23 ctermfg=73
hi Normal ctermbg=none
hi TabLineSel ctermfg=white ctermbg=52
hi TabLine ctermfg=white ctermbg=darkblue
hi TabLineFill ctermfg=darkblue

" coffee indent fold
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

au BufNewFile,BufRead *.html.slim set syntax=slim

" Javascript indent
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

"CSS,SCSS,SASS
au BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.scss setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.sass setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.styl setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

au BufRead,BufNewFile *.sass set filetype=css
au BufRead,BufNewFile *.styl set filetype=css
au BufRead,BufNewFile *.scss set filetype=scss

au BufNewFile,BufRead *.scss set syntax=scss
au BufNewFile,BufRead *.sass set syntax=sass
au BufNewFile,BufRead *.styl set syntax=sass

setlocal omnifunc=syntaxcomplete#Complete

let g:tagbar_type_css = {
    \ 'ctagstype' : 'css',
    \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'i:identities'
    \ ],
    \ }

let g:tagbar_type_scss = {
    \ 'ctagstype' : 'scss',
    \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'm:mixing',
    \ 'i:identities'
    \ ],
    \ }

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
"let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
