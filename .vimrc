"���������Vundle"
set nocompatible               "ȥ��VIMһ���ԣ�����"
filetype off                   "����

" ʹ���Զ���ȫʱ�����ֺ����Ľ���scratch ��
" preview,�������´��룬����ȫ��ɺ��Զ��رս��ʹ���
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif


"���ð���vundle�ͳ�ʼ����ص�����ʱ·��"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"����vundle������������"
Plugin 'VundleVim/Vundle.vim'

"�ڴ����������������װ�Ĳ����Ҫ����vundle#begin��vundle#end֮��"
"��װgithub�ϵĲ����ʽΪ Plugin '�û���/����ֿ���'"
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
" Plugin 'ycm-core/YouCompleteMe'


call vundle#end()              
filetype plugin indent on      "����vim�Դ��Ͳ����Ӧ���﷨���ļ�������ؽű�������
"���������Vundle����"

"���������Pathogen"
""execute pathogen#infect()
""syntax on
""filetype plugin indent on      "����vim�Դ��Ͳ����Ӧ���﷨���ļ�������ؽű�������

au VimEnter * NERDTree


" �����ļ�����
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=gb2312
set termencoding=utf-8
syntax on



"������������
"����Tab����Ϊ4�ո�'
set tabstop=4
"�����Զ���������Ϊ4�ո�'
set shiftwidth=4
"�̳�ǰһ�е�������ʽ�������ڶ���ע��'
set autoindent

"�������
set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"��ʾ����ƥ��
set showmatch

"���ļ����ͼ��
filetype plugin indent on




"vim���ñ��������Ч
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
" �����۵�
set foldenable
" �����۵���ʽ��python��zc�۵���zo��
set foldmethod=indent
" ���ļ������벻�۵� 
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
noremap �� ����<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

inoremap <C-h> <LEFT>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-l> <RIGHT>

"���������Զ���ȫ������
""func SkipPair()
""    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
""            return "\<ESC>la"
""    else
""        return "\t"
""    endif
""endfunc
""" ��tab����Ϊ��������
""inoremap <S-TAB> <c-r>=SkipPair()<CR>



se t_Co=256
"���ļ����ͼ��, �������ſ��������ܲ�ȫ
set completeopt=longest,menu

set shortmess=atI " ������ʱ����ʾ�Ǹ�Ԯ���ڸɴ��ͯ����ʾ
"���벹ȫ
set completeopt=preview,menu
"�������Դ�Сд
set ignorecase
