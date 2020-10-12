
" Environment
" set directory=$XDG_CACHE_HOME/nvim/swap,~/
" set backupdir=$XDG_CACHE_HOME/nvim/backup,~/
" set viminfo+=n$XDG_CACHE_HOME/nvim/viminfo
" set runtimepath=$XDG_CONFIG_HOME/vim/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vimfiles/after

" ===================================================================
" User Settings
set number relativenumber " shows line numbers on the side
syntax on " turn on syntax highlighting
set autoindent " enables autoindention
set tabstop=4 " sets the size of the tab to 4 spaces
set expandtab " tabs are registered as spaces instead of tabs
	      " this is useful when sharing files, tabs would usually
	      " mess up the format, this way, that wont happen
set softtabstop=4 " because of the expandtab setting, this is added
		  " so you do not have to press backspace 4 times, vim
		  " is smart and will remove all 4 spaces w/ 1 press
set wildmode=longest,list,full " autocompletion in cmd line :
set splitbelow splitright " fixes weird splitting of new window
filetype plugin on " turn on filetype plugin so script can run
set updatetime=100 " update every 100ms instead of every 4 sec
set clipboard+=unnamedplus " use system clipboard instead of vim registers

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "um"
    \}

"===================================================================
" Key Mappings
" Shortcut split window switching to ctrl+h/j/k/l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>

" Map cc to toggle nerdcommenter
nmap cc <Plug>NERDCommenterToggle
vmap cc <Plug>NERDCommenterToggle<CR>gv

" ===================================================================
" Automatic commands
autocmd BufWritePre * %s/\s\+$//e " Automatically delete trailing
                                  " whitespace when closing doc

autocmd BufWritePost ~/.Xresources !xrdb % " Run command to update
                                           " xres. after editing

" Open NERDTree automatically when vim opens a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"Disable automatic commenting on newline, this is a pain if not
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



" ===================================================================
" Plugins
" Acceptable plugin types are: git urls or shorthand notation
" Shorthand notation is the github url to the repository, but
" excludes 'https://github.com/'
" Another option is manually installed, just link to dir of plugin
" You can also seperate plugins in one line with |

call plug#begin('~/.config/nvim/.vim/plugged')

 " Plugin to make vim similar to an IDE, using code completion
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " Plugin to add a file system explorer to vim (the original sucks)
 " And add icons to the file explorer, and git support (like VScode)
 " also add better icons and syntax highlighting for nerd tree
 Plug 'scrooloose/nerdtree' | Plug 'ryanoasis/vim-devicons'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

 " Plugin to add Git integration (like in VS Code)
 " also add side bar to show (git diff) changes next to line
 Plug 'tpope/vim-fugitive' | Plug 'airblade/vim-gitgutter'

 " Plugin to auto complete brackets
 Plug 'jiangmiao/auto-pairs'

 " Plugin to make vim similar to an IDE, supporting syntax and
 " indention. This has a huge support of
 " many different languages, and are only loaded when needed
 Plug 'sheerun/vim-polyglot'

 " Fuzzy find files (ctrl+p is the command to launch)
 Plug 'ctrlpvim/ctrlp.vim'

 " Select groups of text (by highlighting) in visual mode
 " and comment/uncomment text
 Plug 'scrooloose/nerdcommenter'

 " Lightline status bar for vim, visual effect
 " CSS color adds color highlight to hex colors, etc. visual effect
 Plug 'itchyny/lightline.vim'
 Plug 'ap/vim-css-color'

call plug#end()

