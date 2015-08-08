" Remove toolbar; menu bar
set guioptions-=T
set guioptions-=m

" Don’t blink cursor in normal mode
set guicursor=n:blinkon0

" Better line-height
set linespace=2

au GUIEnter * call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
