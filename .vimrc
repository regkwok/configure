"let g:AutoComplPop_NotEnableAtStartup=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FuzzyFinder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-p>t :FuzzyFinderTextMate<CR>
map <C-p>] :FuzzyFinderTag <C-R>=expand("<cword>")<CR><CR>
map <C-p>f :FuzzyFinderFile <C-R>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
map <C-p>b :FuzzyFinderBuffer <C-R>=expand("<cword>")<CR><CR>
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 30

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"LaTex
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set winaltkeys=no "shielded ALT
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set iskeyword+=:

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

augroup filetypedetect
  au BufRead,BufNewFile *.js set ft=javascript.jquery
  au! BufNewFile,BufRead *.ch setf cheat
  au BufNewFile,BufRead *.liquid setf liquid
  au! BufRead,BufNewFile *.haml setfiletype haml
  autocmd BufNewFile,BufRead *.yml setf eruby
augroup END

autocmd BufNewFile,BufRead *_spec.rb source ~/.vim/ftplugin/rails/rspec.vim
autocmd BufNewFile,BufRead *_test.rb source ~/.vim/ftplugin/rails/shoulda.vim

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>s :source ~/.vimrc<cr>
map <leader>e :tabedit ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"STARDICT: Use stardict translate Ctrl+\ , should install sdcv
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-\> :!sdcv -u 朗道英汉字典5.0 -u 牛津简明英汉袖珍辞 -u 五笔86 -n <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"
" 在右侧显示窗口
let Tlist_Use_Right_Window = 1
" 压缩方式
let Tlist_Compart_Format = 1
" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1
" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0
" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0
let Tlist_Close_On_Select=1
let Tlist_Show_Menu = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:do_xhtml_mappings = 'yes'
let g:force_html_menu = 'yes'
let g:html_tag_case = 'lowercase'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Color
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  set guioptions-=T
  colorscheme vibrantink
else
  set background=dark
  colorscheme vibrantink
endif

"GUI设置color：guifg, guibg, gui
"支持彩色显示的Terminal：ctermfg, ctermbg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-t> :tabnew<CR>
"map <C-w> :tabclose<CR>
" <N n>
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

:ino <M-1> <C-o>1gt
:ino <M-2> <C-o>2gt
:ino <M-3> <C-o>3gt
:ino <M-4> <C-o>4gt
:ino <M-5> <C-o>5gt
:ino <M-6> <C-o>6gt
:ino <M-7> <C-o>7gt
:ino <M-8> <C-o>8gt
:ino <M-9> <C-o>9gt
:ino <M-0> <C-o>:tablast<CR>

nn <F2> :tabnew<CR>
nn <F3> :%s/\s*$//g<cr>:nohlsearch<cr>''
nn <F4> :set nu! <CR>
autocmd BufRead,BufNewFile *.rb map <F5> :% w !ruby<CR>
nn <F6> <Esc>:set suffixesadd=.html.erb<CR>gf
nn <F7> <Esc>:set suffixesadd=.rb<CR>gf
nn <F8> :TlistToggle<CR>
nn <F9> :shell <CR>
nn <F10> :AutoComplPopEnable<CR>
nn <F12> :silent !lss &<CR><C-l>
imap <F12> <ESC>:silent !lss &<CR><C-l>
":nn <F10> :call ToggleSketch()<CR>  "没事，鼠标画线玩的

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader n>
map <leader>1 :set ft=ruby<cr>
map <leader>2 :set ft=xhtml<cr>
map <leader>3 :set ft=javascript<cr>
map <leader>4 :set ft=css<cr>
map <leader>5 :set ft=vim<cr>
map <leader>6 :set ft=sh<cr>
" <M-hjkl>
:ino <M-j> <DOWN>
:ino <M-k> <UP>
:ino <M-h> <LEFT>
:ino <M-l> <RIGHT>

:nn <C-tab> <C-PageDown>
:nn <C-S-tab> <C-PageUp>

:nn <C-h> <C-w>h
:nn <C-j> <C-w>j
:nn <C-k> <C-w>k

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"minibufexpl.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,ucs-bom,gbk,gb2312,cp936
set encoding=utf8
set guifont=simhei\ 20

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set helplang=cn
set ignorecase

set nocompatible

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"turn on syntax highlighting
syntax on

"load ftplugins and indent files
filetype plugin on
filetype indent on

set backup " make backup file
set backupdir=~/.tmp "where to put backup file
set directory=~/.tmp " directory is the directory for temp file
set autoread "Set to auto read when a file is changed from the outside
set noshowmatch "show matching bracets
set formatoptions=tcrqn "自动格式化
set magic "Set magic on

"indent settings
set shiftwidth=2
set softtabstop=4
set smarttab
set expandtab
set autoindent
set smartindent

imap ;w <ESC>:w<CR>
:nn <Space>w <ESC>:w<CR>

"tell the term has 128 colors
set t_Co=128

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"set nowrap      "dont wrap lines
"set linebreak   "wrap lines at convenient points

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cmd status
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

"store lots of :cmdline history
set history=1000

"display tabs and trailing spaces
"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"Add the variable with the name a:varName to the statusline. Highlight it as
"'error' unless its value is in a:goodValues (a comma separated string)
function! AddStatuslineFlag(varName, goodValues)
  set statusline+=%#error#
  exec "set statusline+=%{RenderStlFlag(".a:varName.",'".a:goodValues."',1)}"
  set statusline+=%*
  exec "set statusline+=%{RenderStlFlag(".a:varName.",'".a:goodValues."',0)}"
endfunction

"returns a:value or ''
"
"a:goodValues is a comma separated string of values that shouldn't be
"highlighted with the error group
"
"a:error indicates whether the string that is returned will be highlighted as
"'error'
"
function! RenderStlFlag(value, goodValues, error)
  let goodValues = split(a:goodValues, ',', 1)
  let good = index(goodValues, a:value) != -1
  if (a:error && !good) || (!a:error && good)
    return '[' . a:value . ']'
  else
    return ''
  endif
endfunction

"statusline setup
set statusline=%t       "tail of the filename
call AddStatuslineFlag('&ff', 'unix,')    "fileformat
call AddStatuslineFlag('&fenc', 'utf-8,') "file encoding
set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

set statusline+=%{StatuslineTrailingSpaceWarning()}

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")
        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction


"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction
