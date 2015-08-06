" Remove toolbar; menu bar
set guioptions-=T
set guioptions-=m

au GUIEnter * call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
