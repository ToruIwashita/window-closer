" Assist closing the window
" Author:  ToruIwashita <toru.iwashita@gmail.com>
" License: This file is placed in the public domain.

if exists('g:loaded_window_closer')
  finish
endif
let g:loaded_tabmove_assist = 1

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
endf

let &cpo = s:cpo_save
unlet s:cpo_save
