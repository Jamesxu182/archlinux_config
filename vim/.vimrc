"""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set softtabstop=4 expandtab

" encoding to UTF-8
set encoding=utf8

" show line number
set nu

" enable mouse support
set mouse=a

" enable syntax hightlight
syntax on

" enable awesome font
set guifont=DejaVuSansMono\ Nerd\ Font\ Mono\ 12

" hide menu bar in gVim
set guioptions -=m 

" hide toolbar in gVim
set guioptions -=T

" hide right-hand scrollbar in gVim
set guioptions -=r

" hide left-hand scrollbar in gVim
set guioptions -=L

"""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""
" Window Move
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Window Resize
" nnoremap <C-M>J :vertical resize -10<CR>
" nnoremap <C-M>H:vertical resize +10<CR>
" nnoremap <C-W>h :resize -10<CR>
" nnoremap <C-W>k :resize +10<CR>

" Tab / Shift + Tab for indenting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Tab Switch
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"""""""""""""""""""""""""""""""""""""""""""
" Cursor
"""""""""""""""""""""""""""""""""""""""""""
set cursorline

"""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""
" System clipboard access
set clipboard=unnamedplus

" Ctrl + V to paste in inert mode
" inoremap <C-V> <ESC>"+pa
" Ctrl + C to copy in visual mode
" vnoremap <C-C> "+y
" Ctrl + D to cut in visual mode
" vnoremap <C-D> "+d

"""""""""""""""""""""""""""""""""""""""""""
" Open
"""""""""""""""""""""""""""""""""""""""""""

" Ctrl + O to open a file in new tab (normal mode)
nnoremap <C-O> :tabnew 

" Ctrl + W to close the current tab (normal mode)
" nnoremap <C-W> :tabclose<CR>

"""""""""""""""""""""""""""""""""""""""""""
" Color
"""""""""""""""""""""""""""""""""""""""""""
" set hightlight for cursor
highlight Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

" set hightlight for curosor line
highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

"""""""""""""""""""""""""""""""""""""""""""
" Miscs
"""""""""""""""""""""""""""""""""""""""""""
" auto change to the directory to where the current file locates
set autochdir

" enable wild menu
set wildmenu

" reduce the time interval back to normal mode
set timeoutlen=1000 ttimeoutlen=0

"""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugins
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-latex/vim-latex'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'euclio/vim-markdown-composer'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'wincent/command-t'
Plugin 'w0rp/ale'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'
Plugin 'brookhong/cscope.vim'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings
"""""""""""""""""""""""""""""""""""""""""""
" open by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Settings
"""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>f :NERDTreeToggle<Enter>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""""""""""""""""""""""""""""""""""""""""""""
" NERDCommneter Settings
""""""""""""""""""""""""""""""""""""""""""""
if has('win32')
  nmap <C-/> <leader>c<Space>
  vmap <C-/> <leader>c<Space>
else
  nmap <C-_> <leader>c<Space>
  vmap <C-_> <leader>c<Space>
endif

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1

""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0 

""""""""""""""""""""""""""""""""""""""""""""
" Vim-Latex Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:Tex_DefaultTargetFormat='pdf'

""""""""""""""""""""""""""""""""""""""""""""
" Vim-Latex-Live-Preview Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:livepreview_previewer='zathura'
let g:livepreview_engine='pdflatex' . ' '

""""""""""""""""""""""""""""""""""""""""""""
" CTagbar Settings
""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>c :TagbarToggle<Enter>

""""""""""""""""""""""""""""""""""""""""""""
" Powerline Settings
""""""""""""""""""""""""""""""""""""""""""""
" set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
" set laststatus=2                " show all the time
" set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme Settings
""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""""""""""""""""""
" Markdown Composer Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:markdown_composer_browser='luakit'
let g:markdown_composer_open_browser='luakit'
let g:markdown_composer_autostart=1

""""""""""""""""""""""""""""""""""""""""""""
" closetag.vim Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

""""""""""""""""""""""""""""""""""""""""""""
" lightline.vim Settings
""""""""""""""""""""""""""""""""""""""""""""
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
  \   'colorscheme': 'seoul256',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}
let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }
set laststatus=2
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline


""""""""""""""""""""""""""""""""""""""""""""
" Vim-Devicons Settings
""""""""""""""""""""""""""""""""""""""""""""
" Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1

" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
