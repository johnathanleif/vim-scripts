" C++ class name insertion
function! s:insert_class_pascal()
  let classname = substitute(expand("%:t"), '_', ' ', "g")
  let classname = substitute(classname, "\\.h", '', "g")
  let classname = substitute(classname, '\<.', '\u&', "g")
  let classname = substitute(classname, ' ', '', "g")
  execute "normal! o\nclass " . classname . " {};"
  normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_class_pascal()
