"PACKAGES----------

"vim package manager
execute pathogen#infect() 

"VISUALS----------

"enable snytax processing
syntax enable 

"allow terminal to run 256bit color 
if !has("gui_running")
        set term=xterm
        set t_co=256
        let &t_AB="\e[48;5;%dm"
        let &t_AB="\e[38;5;%dm"
        colorscheme solarized
endif

"sets colorscheme to lighter version
set background=light

"sets colorscheme 
colorscheme solarized

"remove toolbar 
set guioptions-=T 

"number of visual spaces per TAB
set tabstop=4

"number of spaces in tab when editing
set softtabstop=4

"tabs are spaces
set expandtab

"UI CONFIG----------

"show line numbers
set number

"show command in bottom bar
set showcmd

"highlight current line
set cursorline

"load filetype-specific indent file
filetype indent on

"visual autocomplete for command menu
set wildmenu

"redraw only when we need to
set lazyredraw

"highlight matching [{()}]
set showmatch

"SEARCHING----------

"search as characters are entered
set incsearch

"highlight search matches
set hlsearch

"FOLDING----------

"enable folding
set foldenable

"open most folds by default
set foldlevelstart=10

"10 nested fold max
set foldnestmax=10

"MOVEMENT----------

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"LEADER SHORTCUTS----------

"leader is comma
let mapleader=","

"toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"gundo tweaks
let g:gundo_width=60
let g:gundo_preview_height=40

"INSERT----------

"make backspace work like most other apps
func Backspace()
        if col('.')==1
                if line('.')!=1
                        return "\<ESC>kA\<Del>"
                else
                        return ""
                endif
        else
                return "\<Left>\<Del>"
        endif
endfunc
inoremap <BS> <c-r>=Backspace()<CR>

