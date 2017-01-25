noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

colorscheme ron
set number

syntax enable

set tabstop=4                               " tab printed as 4 space
set softtabstop=4                           " inserted tab printed as 4 space
set expandtab                               " insert spaces instead of tabs
set showcmd                                 " show command in bottom bar

set cursorline

filetype indent on                          " load filetype-specific indent files

set wildmenu

set lazyredraw                              " redraw only when we need to

set showmatch                               " highlight matching [{()}]

set incsearch                               " search characters are entered
set nohlsearch
nnoremap <leader><space> :set hlsearch!<CR>
                                             " turn off search highlight on hitting \ + space

set foldenable                              " enable folding
set foldlevelstart=10                       " open most folds by default
set foldnestmax=10                          " 10 nested fold max
nnoremap <space> za
set foldmethod=indent

nnoremap B ^
nnoremap E $

nnoremap gV `[v`]

set list
set listchars=tab:\»\ ,trail:$

highlight ExtraWhitespace ctermbg=red ctermfg=black
match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace
