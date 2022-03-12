set hidden

" settings for languages
let g:LanguageClient_serverCommands = {
\   'cpp': ['clangd'],
\   'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
\}

augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1
nnoremap <silent> <C-l>h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <C-l>d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <C-l>r :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <C-l>f :call LanguageClient_textDocument_formatting()<CR>

