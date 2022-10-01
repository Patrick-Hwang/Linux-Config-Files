"插件管理器Vundle"
set nocompatible               "去除VIM一致性，必须"
filetype off                   "必须

" 使用自动补全时候会出现函数的解释scratch 和
" preview,设置如下代码，当补全完成后自动关闭解释窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif


"设置包括vundle和初始化相关的运行时路径"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"启用vundle管理插件，必须"
Plugin 'VundleVim/Vundle.vim'

"在此增加其他插件，安装的插件需要放在vundle#begin和vundle#end之间"
"安装github上的插件格式为 Plugin '用户名/插件仓库名'"
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
" Plugin 'ycm-core/YouCompleteMe'


call vundle#end()              
filetype plugin indent on      "加载vim自带和插件相应的语法和文件类型相关脚本，必须
"插件管理器Vundle结束"

"插件管理器Pathogen"
""execute pathogen#infect()
""syntax on
""filetype plugin indent on      "加载vim自带和插件相应的语法和文件类型相关脚本，必须

au VimEnter * NERDTree


" 设置文件编码
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=gb2312
set termencoding=utf-8
syntax on



"设置缩进长度
"设置Tab长度为4空格'
set tabstop=4
"设置自动缩进长度为4空格'
set shiftwidth=4
"继承前一行的缩进方式，适用于多行注释'
set autoindent

"启用鼠标
set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"显示括号匹配
set showmatch

"打开文件类型检测
filetype plugin indent on




"vim配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" color darkblue
set cursorline cursorcolumn
set incsearch
set ignorecase
set smartcase
colorscheme gruvbox
set background=dark
"set background=light
set history=10000
" 代码折叠
set foldenable
" 代码折叠方式按python，zc折叠，zo打开
set foldmethod=indent
" 打开文件，代码不折叠 
set foldlevelstart=99
set confirm
set backspace=indent,eol,start
set t_Co=256
set report=0
set nowrap
set scrolloff=5
set number
set ruler
set showmatch
set showcmd
set title
set laststatus=2
set matchtime=2
set matchpairs+=<:>

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap < <><ESC>i
inoremap { {<CR>}<ESC>O
noremap ‘ ’‘<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

inoremap <C-h> <LEFT>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-l> <RIGHT>

"设置跳出自动补全的括号
""func SkipPair()
""    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
""            return "\<ESC>la"
""    else
""        return "\t"
""    endif
""endfunc
""" 将tab键绑定为跳出括号
""inoremap <S-TAB> <c-r>=SkipPair()<CR>



se t_Co=256
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示
"代码补全
set completeopt=preview,menu
"搜索忽略大小写
set ignorecase
