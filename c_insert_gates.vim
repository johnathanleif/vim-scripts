" C header gates
function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename . "\n"
  execute "normal! Go#endif // " . gatename
  normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
