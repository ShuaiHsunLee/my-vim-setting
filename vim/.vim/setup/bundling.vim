" gruvbox {{{
" https://github.com/morhetz/gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"force override gruvbox backgrhund color
highlight Normal ctermbg = None
" }}}
" vim-airline {{{
" https://github.com/vim-airline/vim-airline#smarter-tab-line
" vim-airline-themes
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
set guifont=Go\ Mono\ for\ Powerline

" vim-airline displaying the status of AsyncRun
let g:asyncrun_status = ''
let g:airline_section_warning = airline#section#create_right(['%{g:asyncrun_status}'])

" ale airline
let g:airline#extensions#ale#enabled = 1
" }}}
" hardmode {{{
" https://github.com/wikitopian/hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" }}}
" hardtime {{{
" make hardtime run in every buffer
" let g:hardtime_default_on = 1
" }}}
" table model {{{
" Markdown-compatible tables
let g:table_mode_corner='+'
" let g:table_mode_header_fillchar='='
" }}}
" YouCompleteMe {{{
" YCM will use the first python executable it finds in the PATH to run jedi
" This means that if you are in a virtual environment and you start vim in that directory
" The first python that YCM will find will be the one in the virtual environment
" So, jedi will be able to provide completions for every package you have in the virtual environment
let g:ycm_python_binary_path = 'python'
" }}}
" CtrlP {{{
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the 
let g:ctrlp_working_path_mode = 'ra'
" }}}
" ale {{{
" Declare which linters using on certain programming language
let g:ale_linters = {'python': ['flake8']}
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
" Keep the sign gutter open at all times
let g:ale_sign_column_always = 1
" Error Message, More Detail :help g:ale_echo_msg_format
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%code%] %s [%severity%]'
" Sign is changable
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" }}}
" vitality {{{
" functionality: iterm2 tmux vim cursor focus
" vim cursor highlight interact between pane on tmux
" vim highlight disappear when unfocus
let g:vitality_tmux_can_focus = 1

au VimEnter,WinEnter,BufWinEnter,FocusGained,CmdwinEnter * setlocal cursorline
au WinLeave,FocusLost,CmdwinLeave * setlocal nocursorline
" }}}
" fzf {{{
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" }}}
" ag.vim {{{
let g:ag_working_path_mode="r"
" }}}
