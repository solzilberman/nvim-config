:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

lua require('plugins')
lua require('remap')

if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
