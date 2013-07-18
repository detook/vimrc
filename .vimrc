
 " MAPS
 map <C-n> :NERDTreeToggle<CR>

 " Visual
 syntax enable
 if has('gui_running')
    set background=light
    colorscheme solarized
    set guifont=UbuntuMono\ 14
 else
    colorscheme desert
 endif

 " show line numbers
 set number

 " command tab autocomplete - human approach
 set wildmode=longest,list,full
 set wildmenu

 " Indents
 set smartindent
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set expandtab

 " Status Line
 set statusline=%{fugitive#statusline()}

 " Highlight 80 symbols
 highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 match OverLength /\%121v.\+/

 " VUNDLE
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
  Bundle 'joonty/vim-phpqa.git'
  Bundle 'phpqa'
  Bundle 'The-NERD-tree'
  Bundle 'php.vim'
  Bundle 'SuperTab'
  Bundle 'minibufexpl.vim'
  Bundle 'taglist.vim'
  Bundle 'sessionman.vim'
  Bundle 'fugitive.vim'
  Bundle 'phpunit'
  Bundle 'XDebug-DBGp-client-for-PHP'
  Bundle 'phpfolding.vim'
  Bundle 'phpcomplete.vim'
  Bundle 'ctrlp.vim'
" Bundle 'PHPUnit-QF'
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
 " non github repos
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "
 " VIM PHPQA SETTINGS
 let g:phpqa_messdetector_autorun = 0
 let g:phpqa_codesniffer_autorun = 0

 " SUPER TAB SETTINGS
 "let g:SuperTabDefaultCompletionType = ""
 
 " NERDTREE
 let NERDTreeShowHidden=1

 " MINIBUFFER
 let g:miniBufExplMapWindowNavArrows = 1  
 let g:miniBufExplMapCTabSwitchBufs = 1 

 " CtrlP
 set runtimepath^=~/.vim/bundle/ctrlp.vim
