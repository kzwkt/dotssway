" Enable navigation with mouse
set mouse=a

" Show line number
set number
set ruler

" Don't show mode (already being shown in lightline)
set noshowmode

" Yank directly to clipboard
set clipboard=unnamedplus

" Tabs configuration
set tabstop=4     " Size of a hard tabstop (ts).
set shiftwidth=4  " Size of an indentation (sw).
"set expandtab     " Always uses spaces instead of tab characters (et).
set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent    " Copy indent from current line when starting a new line.
set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).

call plug#begin()

" Colorscheme (nordtheme.com)
Plug 'arcticicestudio/nord-vim'

" NERDTree
Plug 'preservim/nerdtree'

" FuzzyFinder (for quick search)
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" Autocompletion & linting
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NERDTree addons
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'scrooloose/nerdcommenter'

" Git addon
" Plug 'airblade/vim-gitgutter'

" Diff for VCS
Plug 'mhinz/vim-signify'

" Custom statusbar
Plug 'itchyny/lightline.vim'
call plug#end()

" In normal mode C-n calls :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
"nmap <C-n> :Vexplore<CR>
"vmap ++ <plug>NERDCommenterToggle
"nmap ++ <plug>NERDCommenterToggl

" Remove NERDTree arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Set colorscheme
colorscheme nord

" Enable syntax highlighting
syntax on

" Set window title
set title

" Lightline configuration (for powerline+awesome fonts)
let g:lightline = {
                \ 'colorscheme': 'nord',
		\ 'component': {
		\   'lineinfo': ' %3l:%-2v',
		\ },
		\ 'component_function': {
		\   'readonly': 'LightlineReadonly',
		\   'fugitive': 'LightlineFugitive'
		\ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' }
		\ }
	function! LightlineReadonly()
		return &readonly ? '' : ''
	endfunction
	function! LightlineFugitive()
		if exists('*FugitiveHead')
			let branch = FugitiveHead()
			return branch !=# '' ? ''.branch : ''
		endif
		return ''
	endfunction
