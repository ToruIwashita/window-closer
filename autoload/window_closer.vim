" File: autoload/window_closer.vim
" Author: ToruIwashita <toru.iwashita@gmail.com>
" License: MIT License

let s:cpo_save = &cpo
set cpo&vim

fun! window_closer#close_specifying_window(dest)
  if winnr('$') == 1
    return 0
  endif

  let current_window_num = winnr()

  execute 'wincm '.a:dest

  if winnr() == current_window_num
    return 0
  endif

  silent! close
  wincm p
endf

fun! window_closer#close_miscellaneous_window()
  cclose
  lclose
  pclose
endf

let &cpo = s:cpo_save
unlet s:cpo_save
