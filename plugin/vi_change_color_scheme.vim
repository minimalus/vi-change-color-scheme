" --------------------------------
" Add our plugin to the path
" --------------------------------
python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------
function! NextColorScheme()
python << endOfPython
schemes = vim.eval("g:vi_change_color_scheme_list")
cur_scheme_idx = int(vim.eval("g:vi_change_color_scheme_default"))
cur_scheme_idx = (cur_scheme_idx+1) % len(schemes)
vim.command("let g:vi_change_color_scheme_default = " + str(cur_scheme_idx))
vim.command('colorscheme ' + schemes[cur_scheme_idx])
print "Colorscheme set to:",schemes[cur_scheme_idx]
endOfPython
endfunction

function! PrevColorScheme()
python << endOfPython
schemes = vim.eval("g:vi_change_color_scheme_list")
cur_scheme_idx = int(vim.eval("g:vi_change_color_scheme_default"))
cur_scheme_idx = cur_scheme_idx-1 if cur_scheme_idx > 0 else len(schemes)-1
vim.command("let g:vi_change_color_scheme_default = " + str(cur_scheme_idx))
vim.command('colorscheme ' + schemes[cur_scheme_idx])
print "Colorscheme set to:", schemes[cur_scheme_idx]
endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! NextColorScheme call NextColorScheme()
command! PrevColorScheme call PrevColorScheme()
