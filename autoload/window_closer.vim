" Assist closing the window
" Author:  ToruIwashita <toru.iwashita@gmail.com>
" License: This file is placed in the public domain.

if exists('g:loaded_window_closer')
  finish
endif
let g:loaded_tabmove_assist = 1

let s:cpo_save = &cpo
set cpo&vim

fun! s:specifying_window_close(dest)
  if winnr('$') == 1
    return 0
  endif

  execute 'wincm '.a:dest
  silent! close
endf

let &cpo = s:cpo_save
unlet s:cpo_save
