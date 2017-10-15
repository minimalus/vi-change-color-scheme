" --------------------------------
" Add our plugin to the path
" --------------------------------
python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------
function! TemplateExample()
python << endOfPython

from vi_change_color_scheme import vi_change_color_scheme_example

for n in range(5):
    print(vi_change_color_scheme_example())

endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! Example call TemplateExample()
