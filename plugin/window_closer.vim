" Assist closing the window
" Author:  ToruIwashita <toru.iwashita@gmail.com>
" License: This file is placed in the public domain.

command! CloseRightWin call window_closer#close_specifying_window('l')
command! CloseLeftWin call window_closer#close_specifying_window('h')
command! CloseUpWin call window_closer#close_specifying_window('k')
command! CloseDownWin call window_closer#close_specifying_window('j')
