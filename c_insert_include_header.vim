" C include header
function! s:insert_include_header()
let include = substitute(expand("%:t"), "\\.cpp", "\\.h", "g")
let include = substitute(include, "\\.c", "\\.h", "g")
  execute "normal! i#include \"" . include . "\"\n"
  normal! kk
endfunction
autocmd BufNewFile *.{c,cpp} call <SID>insert_include_header()
