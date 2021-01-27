set hidden
" settings for languages
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
        \ 'cpp': ['clangd'],
        \ 'rust': ['~/.cargo/bin/rustup','run','stable','rls'],
        \ 'python': ['/usr/local/bin/pyls'],
        \ }

augroup LanguageClient_config
  autocmd!
  autocmd User LanguageClientStarted setlocal signcolumn=yes
  autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

nnoremap <silent> <Space>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <Space>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <Space>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <Space>lf :call LanguageClient_textDocument_formatting()<CR>
