"""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" show line number
set nu

" enable mouse support
set mouse=a

" enable syntax hightlight
syntax on

" enable awesome font
set guifont=Font\ Awesome\ 14

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
inoremap <C-V> <ESC>"+pa
" Ctrl + C to copy in visual mode
vnoremap <C-C> "+y
" Ctrl + D to cut in visual mode
vnoremap <C-D> "+d

"""""""""""""""""""""""""""""""""""""""""""
" Open
"""""""""""""""""""""""""""""""""""""""""""

" Ctrl + O to open a file in new tab (normal mode)
nnoremap <C-O> :tabnew 

" Ctrl + W to close the current tab (normal mode)
nnoremap <C-W> :tabclose<CR>


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
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-latex/vim-latex'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'majutsushi/tagbar'
Plugin 'powerline/powerline' 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'euclio/vim-markdown-composer'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-vinegar'
Plugin 'sheerun/vim-polyglot'
" Plugin 'rstacruz/vim-closer'
Plugin 'junegunn/fzf.vim'

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
let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0 

""""""""""""""""""""""""""""""""""""""""""""
" Vim-Latex Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:Tex_DefaultTargetFormat='pdf'

""""""""""""""""""""""""""""""""""""""""""""
" Vim-Latex-Live-Preview Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex' . ' '

""""""""""""""""""""""""""""""""""""""""""""
" CTagbar Settings
""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>c :TagbarToggle<Enter>

""""""""""""""""""""""""""""""""""""""""""""
" Powerline Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:powerline_pycmd="py"
set laststatus=2                " show all the time

""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme Settings
""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""
" Markdown Composer Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:markdown_composer_browser='luakit'
let g:markdown_composer_open_browser='luakit'
let g:markdown_composer_autostart=1

""""""""""""""""""""""""""""""""""""""""""""
" lightline.vim Composer Settings
""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
    \'colorscheme': 'molokai',
\}

""""""""""""""""""""""""""""""""""""""""""""
" fzf vim Settings
""""""""""""""""""""""""""""""""""""""""""""
if executable('fzf')
  " FZF {{{
  " <C-p> or <C-t> to search files
  nnoremap <silent> <Leader>t :FZF -m<cr>

  " <M-p> for open buffers
  nnoremap <silent> <Leader>b :Buffers<cr>

  " <M-S-p> for MRU
  nnoremap <silent> <Leader>h :History<cr>

  " Better command history with q:
  command! CmdHist call fzf#vim#command_history({'right': '40'})
  nnoremap q: :CmdHist<CR>

  " Better search history
  command! QHist call fzf#vim#search_history({'right': '40'})
  nnoremap q/ :QHist<CR>

  command! -bang -nargs=* Ack call fzf#vim#ag(<q-args>, {'down': '40%', 'options': --no-color'})
  " }}}
else
end

