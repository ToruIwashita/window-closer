" Assist closing the window
" Author:  ToruIwashita <toru.iwashita@gmail.com>
" License: This file is placed in the public domain.

command! -nargs=1 WinClose call window_closer#specifying_window_close
