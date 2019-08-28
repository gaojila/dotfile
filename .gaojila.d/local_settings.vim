" tmux
if dein#tap('vim-tmux-navigator')
    let g:tmux_navigator_no_mappings = 1
    let g:tmux_navigator_save_on_switch = 2
    let g:tmux_navigator_disable_when_zoomed = 1
    nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
    nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
    nnoremap <silent> <c->  :TmuxNavigatePrevious<cr>
endif

" theme
let g:onedark_termcolors=257
colorscheme   onedark

" copyright
if dein#tap('vim-copyright')
    let g:file_copyright_name = "luwenzheng"
    let g:file_copyright_email = "redgaojila@gmail.com"
    let g:file_copyright_auto_filetypes = ['sh','python']
endif
