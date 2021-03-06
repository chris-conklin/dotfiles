

    inoremap <Down> <C-o>gj
    inoremap <Up> <C-o>gk



"============================================================================
" Turn on the ruler in the status line
"============================================================================

    set ruler


"============================================================================
" Make % match angle brackets as well (including Euro-brackets)
"============================================================================

    set matchpairs+=<:>,�:�


"============================================================================
" Allow deletes in Insert mode to keep deleting past the insertion point
"============================================================================

    set backspace=indent,eol,start


"============================================================================
" Turn on case-insensitive matches (but only when pattern is all-lowercase)
"============================================================================

    set ignorecase smartcase


"============================================================================
" Make searches look-ahead as you type
"============================================================================

    set incsearch


"============================================================================
" Make successful searches highlight all possible matches
"============================================================================

    set hlsearch


"============================================================================
" Make delete key in Normal mode remove the persistently highlighted matches
"============================================================================

    nmap <silent>  <BS>  :nohlsearch<CR>



"============================================================================
" Set up persistent undo (with all undo files in one directory)
"============================================================================

    if has('persistent_undo')
        set undofile
    endif

    set undodir=$HOME/.VIM_UNDO_FILES

    set undolevels=5000


"============================================================================
" When completing, show all options, insert common prefix, then iterate
"============================================================================

    set wildmode=list:longest,full


"============================================================================
" Make shift operations in Visual mode stay in Visual mode afterwards
"============================================================================

    vmap <expr> > ShiftAndKeepVisualSelection(">")
    vmap <expr> < ShiftAndKeepVisualSelection("<")

    function! ShiftAndKeepVisualSelection(cmd, mode)
        set nosmartindent
        if mode() =~ '[Vv]'
            return a:cmd . ":set smartindent\<CR>gv"
        else
            return a:cmd . ":set smartindent\<CR>"
        endif
    endfunction


"============================================================================
" Set line numbers
"============================================================================
    set number

"============================================================================
" Set up a permanent universal vertical marker after 80 columns
"============================================================================

"    highlight ColorColumn ctermbg=magenta
"    set colorcolumn=81


"============================================================================
" Highlight anything in the 81st column of long lines
"============================================================================

"    highlight ColorColumn ctermbg=magenta
"    call matchadd('ColorColumn', '\%81v', 100)

"============================================================================
" Highlight anything in the 81st column or later
"============================================================================

"    highlight ColorColumn ctermbg=magenta
"    call matchadd('ColorColumn', **'\%>80v'**, 100)


"============================================================================
" Fold lines according to the file's syntax
"============================================================================

    syntax enable
    set foldmethod=syntax


"============================================================================
" Fold lines for which the specified expression produces a fold-level
"============================================================================

    set foldexpr=strlen(matchstr(getline(v:lnum),'^-*'))
    set foldmethod=expr


"============================================================================
" Make folds auto-open and auto-close when the cursor moves over them
"============================================================================

    :set foldopen=all
    :set foldclose=all


"============================================================================
" Show/hide fold structure in the left margin
"============================================================================

    :set foldcolumn=6

    :set foldcolumn&

" Make Ctrl-e jump to the end of the current line in the insert mode. This is
" handy when you are in the middle of a line and would like to go to its end
" without switching to the normal mode.
    inoremap <C-e> <C-o>$

