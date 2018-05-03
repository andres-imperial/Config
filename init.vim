set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:clang_library_path='/usr/lib64/libclang.so.5.0'
let g:deoplete#enable_at_startup = 1


" ----- Plugins ---------------------------------------------------------------
" -----------------------------------------------------------------------------
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" Add Plugins below!
" Make sure you use single quotes

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Linting
Plug 'neomake/neomake'

" Nerd Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Nerd Tree
Plug 'scrooloose/nerdcommenter'

" Deoplete (auto-complete)
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" Python Syntax
Plug 'klen/python-mode'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Initialize plugin system
call plug#end()
" ----- End Plugins -----------------------------------------------------------


" ----- Key Remaps ------------------------------------------------------------
let mapleader = ","
imap jk <esc>
" NERDtree shortcuts
nnoremap f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Search and Replace
nmap <Leader>s :%s//g<Left><Left><Paste>
" Close scratch preview buffer
nnoremap <Leader>p :pclose<Enter>
" Auto close scratch preview buffer upon autocomplete
autocmd CompleteDone * pclose
" -----------------------------------------------------------------------------


" ----- NERDtree Settings -----------------------------------------------------
" Auto-start NERDtree"
autocmd vimenter * NERDTree
" Close NERDtree when opening a file
let NERDTreeQuitOnOpen = 1
" Delete buffer of file just deleted in NERDtree 
let NERDTreeAutoDeleteBuffer = 1
" Appearance
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" -----------------------------------------------------------------------------


" ----- NERDcomment Settings --------------------------------------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
" -----------------------------------------------------------------------------


" ----- Airplane Setting ------------------------------------------------------
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'powerlineish'
" -----------------------------------------------------------------------------


" ----- Basic Settings --------------------------------------------------------
set nowrap              " Do not wrap lines
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif

if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

" ----- Spacing --------------------------------------------------------------
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
" -----------------------------------------------------------------------------

