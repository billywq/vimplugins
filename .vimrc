" Maintainer:
"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version:
"       5.0 - 29/05/12 15:43:36
"
" Blog_post:
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version:
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set automatic indent
set cindent

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

set number

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ";"
let g:mapleader = ";"

" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.dSYM

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" 设置状态栏主题风格
"let g:Powerline_colorscheme='solarized256'

"colorscheme desert
set background=dark
colorscheme blackboard

set t_Co=256

    "the cursor color in normal mode
    hi Cursor guifg=White guibg=green

    "the cursor color in insert mode
    hi iCursor guifg=White guibg=red

    "the cursor shape in normal visual command mode
    set guicursor=n-v:block-Cursor

    "the cursor shape in insert, command, and command- insert mode
    set guicursor+=i-c-ci:ver25-iCursor

    "the cursor shape in operator mode
    set guicursor+=o:ver100-iCursor

    "the cursor shape in replace mode
    set guicursor+=r-cr:hor20-iCursor

    "disable cursor blinking
    set guicursor+=a:blinkon0
hi Comment      guifg=#dddddd gui=italic ctermfg=246 ctermbg=none cterm=NONE

"hi Todo         guifg=#8f8f8f gui=italic ctermfg=245 ctermbg=none cterm=NONE
"hi Constant     guifg=#e5786d gui=none ctermfg=167 ctermbg=none cterm=none
"hi String       guifg=#95e454 gui=italic ctermfg=113 ctermbg=none cterm=NONE
"hi Identifier   guifg=#cae682 gui=none ctermfg=150 ctermbg=none cterm=none

hi Function     guifg=LightGreen   gui=none ctermfg=199 ctermbg=none cterm=none
hi Type         guifg=#F589CA gui=none ctermfg=150 ctermbg=none cterm=none
hi Statement    guifg=#8ac6f2 gui=none ctermfg=117 ctermbg=none cterm=none
hi Keyword      guifg=#8ac6f2 gui=none ctermfg=117 ctermbg=none cterm=none
hi Search       term=reverse ctermfg=7 ctermbg=9 guifg=wheat guibg=peru
hi SpellCap     term=reverse ctermbg=9 gui=undercurl guisp=Yellow
hi! link Search Todo

"hi PreProc      guifg=#e5786d gui=none ctermfg=167 ctermbg=none cterm=none
"hi Number       guifg=#e5786d gui=none ctermfg=167 ctermbg=none cterm=none
"hi Special      guifg=#e7f6da gui=none ctermfg=194 ctermbg=none cterm=none
"hi Class        guifg=#fff000 gui=none ctermfg=194 ctermbg=none cterm=none

hi Class       guifg=#e5786d gui=none ctermfg=167 ctermbg=none cterm=none


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guitablabel=%M\ %t
    "the cursor color in normal mode
    hi Cursor guifg=White guibg=green

    "the cursor color in insert mode
    hi iCursor guifg=White guibg=red

    "the cursor shape in normal visual command mode
    set guicursor=n-v:block-Cursor

    "the cursor shape in insert, command, and command- insert mode
    set guicursor+=i-c-ci:ver25-iCursor

    "the cursor shape in operator mode
    set guicursor+=o:ver100-iCursor

    "the cursor shape in replace mode
    set guicursor+=r-cr:hor20-iCursor

    "disable cursor blinking
    set guicursor+=a:blinkon0
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
nnoremap <space> <PageDown>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set showtabline=1
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Only show the status line more than one window
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
    imap <D-v> "+p
    imap <leader>p <esc>"+gpa
endif


" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge

    "format cpp files and auto complete header files
    if &filetype == 'cpp'
        exe 'normal! gg=G'
        exe 'ruby CppAutoInclude::process'
    endif

    exe "normal `z"
endfunc
"autocmd BufWrite *.py :call DeleteTrailingWS()
"autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite * :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>vg :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
"map <leader>p :cp<cr>
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction


execute pathogen#infect()
nmap <Leader>q :q<CR>


" show buffer explorer
nnoremap <leader>b :BufExplorerHorizontalSplit<CR>

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" set listchars=tab:t-,trail:-
" 在normal 和visual 模式下，使用tab和shift+tab 缩进代码
nnoremap <tab> v>
nnoremap <s-tab> v<
vnoremap <tab>   >gv
vnoremap <s-tab> <gv
vnoremap / y/<c-r>"<cr>

nnoremap <leader>bl :BufExplorerHorizontalSplit<CR>

" 定义F3 打开文件浏览窗口
map <F3> :NERDTreeToggle<CR>
map <F7> :FufTaggedFile<CR>
map <F8> :FufTag<CR>
map <F2> :TagbarToggle<CR>
inoremap <F3> :NERDTreeToggle<CR>
inoremap <F7> :FufTaggedFile<CR>
inoremap <F8> :FufTag<CR>
inoremap <F2> :TagbarToggle<CR>


" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_right=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list
nnoremap <Leader>tl :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中显示冗余帮助信息
let g:tagbar_compact=0
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
            \ 'ctagstype' : 'c++',
            \ 'kinds'     : [
            \ 'd:macros:1',
            \ 'g:enums',
            \ 't:typedefs:0:0',
            \ 'e:enumerators:0:0',
            \ 'n:namespaces',
            \ 'c:classes',
            \ 's:structs',
            \ 'u:unions',
            \ 'f:functions',
            \ 'm:members:0:0',
            \ 'v:global:0:0',
            \ 'x:external:0:0',
            \ ],
            \ 'sro'        : '::',
            \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'n' : 'namespace',
            \ 'c' : 'class',
            \ 's' : 'struct',
            \ 'u' : 'union'
            \ },
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'namespace' : 'n',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u'
            \ }
            \ }
" <<

" >>
" 库信息参考

" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim

" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" <<

" >>
" 工程文件浏览

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>


" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=32
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="left"
" 不显示隐藏文件
let NERDTreeShowHidden=0
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=0
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"当打开vim且没有文件时自动打开NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
"autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd BufReadPost *.cpp,*.[ch] exec ":UpdateTypesFileOnly"
autocmd FileType cpp :setlocal equalprg=clang-format\ -style=\"\{BasedOnStyle:\ llvm,\ IndentWidth:\ 4,MaxEmptyLinesToKeep:\ 2\}\"
" autocmd FileType cpp <buffer> :inoremap " "";<Left><Left>
" autocmd FileType cpp <buffer> :inoremap ( ();<Left><Left>
" autocmd FileType cpp <buffer> :inoremap ' '';<Left><Left>
" autocmd FileType cpp <buffer> :inoremap [ [];<Left><Left>
" autocmd FileType cpp <buffer> :inoremap { {<CR><Tab><CR>};<Up>
autocmd FileType cpp :inoremap <buffer> .<Space> ->
"autocmd FileType cpp :inoremap try<Space> try<Space>{<CR><CR>}<Space>catch<Space>(<Space>){<CR>};<Up><Up>
"autocmd FileType cpp :inoremap for<Space> for<Space>(int<Space>i<Space>=<Space>0;<Space>i<Space><<Space>; i++){<CR>};<Up><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Right><Esc>
"autocmd FileType cpp :inoremap if<Space> if<Space>(<Space><Space>)<Space>{<CR>};<Up><Right><Right><Right>
"autocmd FileType cpp :inoremap el<Space> elseif<Space>(<Space><Space>)<Space>{<CR>};<Up><Right><Right><Right><Right><Right><Right><Right>
"autocmd FileType cpp :inoremap sw<Space> switch<Space>(<Space><Space>)<Space>{<CR>case:<CR>break;<CR>case:<CR>break;<CR>default:<CR>break;};<Up><Up><Up><Up><Up><Up><Right>
"autocmd FileType cpp :inoremap inc<Space> #include<Space>""<Left>
"autocmd FileType cpp :inoremap incl<Space> #include<Space><><Left>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func! SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "")
        "    elseif &filetype == 'mkd'
        "        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else
        call setline(1,          "/*************************************************************************")
        call append(line("."),   "  File Name: ".expand("%"))
        call append(line(".")+1, "  Description: TODO")
        call append(line(".")+2, "  )
        call append(line(".")+3, "  )
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include <iostream>")
        call append(line(".")+7, "")
        call append(line(".")+8, "")
        call append(line(".")+9, "using namespace std;")
        call append(line(".")+10, "")
        "call append(line(".")+11,"class ".expand("%<"))
        call append(line(".")+11,"class Solution")
        call append(line(".")+12,"")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "")
        call append(line(".")+8, "")
        call append(line(".")+9, "int main(int args, char** argv) {")
        call append(line(".")+10, "")
        call append(line(".")+11, "    return 0")
        call append(line(".")+12, "}")
    endif
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%<"))
        call append(line(".")+7,"")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G

"C，C++ 按shift+F5编译
map <s-F5> :call CompileGcc()<CR>
"C，C++ 按F5编译运行
imap <F5> <ESC>:call CompileRunGcc()<CR>
map <F5> :call CompileRunGcc()<CR>
func! CompileGcc()
    exec "wa"
    if (&filetype == 'c' || &filetype == 'cpp')
        exec "!clang++ -o0 -c -std=c++1y -g -I /usr/lib/c++/v1/ % "
    endif
endfunc

func! CompileRunGcc()
    exec "wa"
    if (&filetype == 'c' || &filetype == 'cpp')
        exec  "!rm -rf %<"
        exec  "!clang++ % -o0 -w -o %< -std=c++1y -g -I /usr/lib/c++/v1/ -lc++ -lc++abi"
        exec "!./%<"
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
        "        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"let g:ycm_show_diagnostics_ui = 1

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=white ctermbg=blue guifg=#FD971F guibg=#075BB5
" 选中项
highlight PmenuSel ctermfg=white ctermbg=grey guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
" set tags+=/usr/include/c++/4.2.1/stdcpp.tags

let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1



" 使用 Grep.vim 插件在工程内全局查找，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :Grep -ir<CR><CR><CR>
" 使用 Grep.vim 插件在工程内全局查找，设置快捷键。快捷键速记法：search in buffer
nnoremap <Leader>sb :GrepBuffer -ir<CR><CR>

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

"let g:clang_format#auto_format=1

function! <SID>SetMainDefaults()

    " your default options goes here!

endfunction

call <SID>SetMainDefaults()

" initialize vimprj plugin
call vimprj#init()

" define a hook
function! g:vimprj#dHooks['SetDefaultOptions']['main_options'](dParams)
    call <SID>SetMainDefaults()
endfunction


set guifont=Courier\ New:h18


unmap <C-i>

" Ignore case when searching
set ignorecase

highlight StatusLine term=reverse cterm=reverse guifg=LightGreen guibg=grey30

nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>g :YcmCompleter GoTo<CR>

" 全文查找替换
map <C-h> :%s/
imap <C-h> <Esc><C-H>
vnoremap <C-h> y:%s/<c-r>"//g<Left><Left>

set path+=/usr/local/include/

" map jk combination to enter normal mode
inoremap jk <esc>
cmap jk <esc>

let g:ycm_global_ycm_extra_conf = "/Users/qiwang/i3-code-test/.ycm_extra_conf.py"

autocmd FileType cpp let b:delimitMate_expand_space = 1
autocmd FileType cpp let b:delimitMate_expand_cr = 2
autocmd FileType cpp let b:delimitMate_jump_expansion = 1

autocmd FileType cpp set foldmethod=syntax

set nofoldenable

" enable backspace works in insert mode
iunmap <c-h>

set cscopequickfix=s-,c-,d-,i-,t-,e-

" highlight syntax
nmap <leader>u :UpdateTypesFileOnly<cr>

" 在所有的模式下面打开鼠标。
set mouse+=a
"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>

" source .vimrc once modified
autocmd! BufWritePost .vimrc source %

let g:indentLine_enabled=0
nnoremap <leader>ii :IndentLinesToggle<cr>

