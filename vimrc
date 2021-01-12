let mapleader=","
set nocp
set noswapfile

" Tab related
set ts=4
set sw=4
set smarttab
set et
set ambiwidth=double

" Format related
set tw=78
set lbr
set fo+=mB

" Indent related
set cin
set ai
set cino=:0g0t0(susj1

" Editing related
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set mouse-=a
set selectmode=
set mousemodel=popup
set keymodel=
set selection=inclusive

"Misc
set wildmenu
set number
set relativenumber
set clipboard^=unnamedplus


" Encoding related
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" File type related
filetype plugin indent on
syntax on

" Display related
set ru
set sm
set hls
set wrap

" mapping
inoremap jk <esc>
"nnoremap ; :   "f的时候会需要用;重复查找
inoremap <leader>s <esc>:w<cr>
nnoremap <silent> <leader>/ :nohls<CR>
nnoremap <leader>wq :wq<cr> 
nnoremap <leader>q :q<cr> 
nnoremap <leader>Q :q!<cr>

" 为了强迫使用自定义的快捷键而禁用一些默认按键
"inoremap <esc> <nop>   "这个不能用，上下左右以及一些按键会输出控制字符
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    silent exec "w"
    silent exec "!clear"
    if &filetype == 'c'
        silent exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        silent exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
