let g:airline#extensions#ale#enabled = 1

highlight ALEError guibg=#2E3459 guisp=#E33400
highlight ALEInfo guibg=#2E3459 guisp=#CE6F8F
highlight ALEWarning guibg=#2E3459 guisp=#E39400
highlight ALEErrorLine guibg=#E33400 gui=bold
highlight ALEInfoLine guibg=#CE6F8F gui=bold
highlight ALEWarningLine guibg=#E39400 gui=bold

" Use system flake8
"let g:ale_python_flake8_executable = '/usr/bin/flake8'
let g:ale_linters = {
\   'python': ['flake8'],
\   'sh': ['shellcheck'],
\}
