set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
" Hier teste ich das 
"PluginInstall
"
Plugin 'gmarik/vundle'
Plugin 'bling/vim-airline'
Plugin '907th/vim-auto-save'
"let g:auto_save = 1  " enable AutoSave on Vim startup
"Plugin 'marcweber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
Plugin 'yegappan/mru'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'


Plugin 'honza/vim-snippets'


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"let g:snips_trigger_key = '<tab>'
"let g:snips_trigger_key_backwards = '<s-tab>'


"Plugin 'sjl/gundo.vim'
"nnoremap <F5> :GundoToggle<CR>

Plugin 'mbbill/undotree.git'
"Plugin 'mbbill/undotree'
nnoremap <F5> :UndotreeToggle<cr>

if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

Plugin 'powerman/vim-plugin-autosess'


if has('persistent_undo')
    set undodir=~/.vimundo
    set undofile
    augroup vimrc-undofile
        autocmd!
        autocmd BufReadPre ~/* setlocal undofile
    augroup END
endif

"Plugin 'chrisbra/csv.vim'


"Zeigt an Klammern
set matchpairs=(:),{:},[:],<:>

"set wundo
set undofile

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
map <C-n> :NERDTreeToggle<CR>


"Plugin 'mattn/emmet-vim' 

"Plugin 'tpope/vim-surround'
Bundle 'tpope/vim-surround'

"verbose vmap S


" To get plugins from Vim Scripts, you can reference the plugin
	" by name as it appears on the site
	"Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on
"Die untere einstellung ist für Airline einstellung ob es geht?

set laststatus=2

""set clipboard=unnamed
" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


" automatische Zeileneinrueckung
set autoindent
set smartindent

" automatisches Einruecken deaktivieren
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"Das Kopieren aus der Zwischenablage aendern mit der Taste F12

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


" aktuelle Zeile und Spalte anzeigen
set ruler
"set scrolloff=2

"set nu
"vmap <C-c> "+y
"nmap <C-v> "+p
set noswapfile

Bundle 'farseer90718/vim-taskwarrior'
"BundleInstall
"
"imap <c-d> dd
imap <c-d> <esc>dd


