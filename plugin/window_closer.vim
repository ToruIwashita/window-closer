" File: plugin/window_closer.vim
" Author: Toru Hoyano <toru.iwashita@gmail.com>
" License: MIT License

if exists('g:loaded_window_closer')
  finish
endif
let g:loaded_window_closer = 1

let s:cpo_save = &cpo
set cpo&vim

command! CloseRightWin call window_closer#close_specifying_window('l')
command! CloseLeftWin call window_closer#close_specifying_window('h')
command! CloseUpWin call window_closer#close_specifying_window('k')
command! CloseDownWin call window_closer#close_specifying_window('j')

let &cpo = s:cpo_save
unlet s:cpo_save
