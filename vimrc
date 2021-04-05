" gerenciador de pacotes
call plug#begin(stdpath('config') . '/plugged')
	Plug 'vim-airline/vim-airline-themes'
	Plug 'vim-airline/vim-airline'
	Plug 'davidhalter/jedi-vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" recomendacoes....
	filetype plugin indent on
	syntax enable
	
" configuração nerdtree
		nnoremap <leader>n :NERDTreeFocus<CR>
		nnoremap <C-n> :NERDTree<CR>
		nnoremap <C-t> :NERDTreeToggle<CR>
		nnoremap <C-f> :NERDTreeFind<CR>
		autocmd VimEnter * NERDTree
		let g:NERDTreeDirArrowExpandable = '▸'
		let g:NERDTreeDirArrowCollapsible = '▾'

" opções do edito para python
		let g:python3_host_prog='C:/Users/foo/Envs/neovim3/Scripts/python.exe'
		let g:python_host_prog='C:/Users/foo/Envs/neovim/Scripts/python.exe'


"configurando servidor de linguagem python 
	let g:python3_host_prog='C:/Python38/python.exe'
	let g:python_host_prog='C:/Python38/python.exe'

"aparencia...
	colorscheme dracula
	autocmd BufEnter * AirlineTheme base16_colors

" minhas configuaçoões pessoais
	set number
	set encoding=utf-8
	set cursorline
	set tabstop=4
	set background=dark
	set relativenumber
	set smartindent
	set paste
	set mouse=a

" auto pair
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
nnoremap <c-v> "+p

