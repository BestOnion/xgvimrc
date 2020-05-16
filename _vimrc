"不显示警报
set vb t_vb=
"关闭提示音
set noerrorbells
"设置字符编码
set fileencodings=ucs-bom,utf-8,chinese
"打开基于稳健类型的插件
filetype plugin on
"打开基于文件类型的缩进
filetype indent on
"语法高亮
syntax on
"开启光标高亮
set cursorline
"不产生备份文件
set nobackup
"右下角显示光标位置
set ruler
"右下角显示输入的命令
set showcmd
"输入搜索内容时显示搜索结果
set incsearch
"自动缩进
set autoindent
"显示行号
set number
"设置主题
colorscheme torte

"插入模式下把Tab键映射为自动补全
imap <tab> <c-n>

"空格控制按缩进折叠
set foldmethod=indent
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>

"普通模式下用快捷键F1实现百科全书功能，配合pkm知识库资源
nmap <F1> viwy:vimgrep/<C-R>0/gj$VIM/vim*/pkm/*<CR>:botright copen<CR>

"用NERD_commenter插件自动注释并设置快捷键为F2
map <F2> <leader>c<space>

"用authorinfo插件实现自动添加作者信息并设置快捷键为F3
nmap <F3> :AuthorInfoDetect<cr>
let g:vimrc_author = 'XingguangJushi'
let g:vimrc_email = 'antcxgjs@gmail.com'
let g:vimrc_email = 'www.blogspot.com/followstars'

"用xptemplate插件实现代码自动补全并设置快捷键为F9（插入状态下使用）
let g:xptemplate_key = '<F9>'	

"用Ctags工具实现建立当前目录递归索引并设置快捷键为F4
map <F4> :!ctags -R --tag-relative --fields=+iaS --extra=+q<CR>

"设置采用向上递归目录使用tags
set tags=tags;

"开关taglist和NERD_tree插件并设置快捷键为F12
map <F12> :TlistToggle<CR>:NERDTreeToggle<CR>
