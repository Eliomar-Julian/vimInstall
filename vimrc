call plug#begin('~\vimfiles\plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-scripts/auto-pairs-gentle'
	Plug 'vim-airline/vim-airline'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mattn/emmet-vim'
call plug#end()

set encoding=UTF-8
colorscheme monokai

" configu
	set noerrorbells
	set belloff=all
	set mouse=a
	set number
	set hidden
	syntax enable
	set tabstop=4
	set autoindent
	let g:AutoPairsUseInsertedCount = 1
	let g:user_emmet_install_global = 0
	autocmd FileType html,css EmmetInstall
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
	CocEnable
	set shell=PowerShell
	set smartindent
	nnoremap <c-v> "+p
