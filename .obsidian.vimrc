"exmap nextHeading obcommand obsidian-editor-shortcuts:goToNextHeading
"exmap prevHeading obcommand obsidian-editor-shortcuts:goToPrevHeading
"noremap ]] :nextHeading
"noremap [[ :prevHeading

nmap j gj
nmap k gk

" [m]atch parenthesis
nnoremap m %

" Yank to system clipboard
set clipboard=unnamed
set tabstop=4

" sentence navigation
noremap [ (
noremap ] )

inoremap jj <Esc>

" [g]oto [o]pen file (= Quick Switcher)
"exmap quickSwitcher obcommand obsidian-another-quick-switcher:search-command_recent-search
"noremap go :quickSwitcher
"noremap gr :quickSwitcher

" spell check
"exmap contextMenu obcommand editor:context-menu
"nmap z= :contextMenu
"vmap z= :contextMenu

" Emulate Original gt and gT https://vimhelp.org/tabpage.txt.html#gt
exmap nextTab obcommand workspace:next-tab
exmap prevTab obcommand workspace:previous-tab
nmap gt :nextTab
nmap gT :prevTab

exmap wq obcommand workspace:close
exmap q obcommand workspace:close

" surround

exmap surround_wiki surround [[]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map s` :surround_backticks
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets
