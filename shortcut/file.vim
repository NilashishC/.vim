call shortcut#map('<Space> s f', 'File -> Rename', 'call feedkeys(":Rename ", "n")')
call shortcut#map('<Space> d f', 'File -> Delete', 'call feedkeys(":Remove ", "n")')
call shortcut#map('<Space> O f', 'File -> Open', 'Unite -no-split file file/new')
call shortcut#map('<Space> o f', 'File -> Open (relative)', 'UniteWithBufferDir -no-split file file/new')
call shortcut#map('<Space> O d', 'File -> Browse', 'VimFilerCurrentDir -quit')
call shortcut#map('<Space> o d', 'File -> Browse (relative)', 'VimFilerBufferDir -quit')
call shortcut#map("<Space> ' f", 'File -> Jump to...', 'Unite -no-split file/vcs file_mru file_rec/async')
call shortcut#map("<Space> ` f", 'File -> Jump to... (relative)', 'UniteWithBufferDir -no-split file/vcs file_mru file_rec/async')
call shortcut#map('<Space> y f', 'File -> Save as...', 'call feedkeys(":saveas %\t", "t")')
call shortcut#map('<Space> Y f', 'File -> Save as copy', 'call feedkeys(":write %\t", "t")')
