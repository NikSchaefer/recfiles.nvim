" This file detects recfiles to provide syntax highlighting

" Detect recfiles by extension and content
au BufNewFile,BufRead *.rec setfiletype recfiles
au BufNewFile,BufRead *.recfile setfiletype recfiles

" Detect by content - files starting with # -*- mode: rec -*-
au BufNewFile,BufRead * if getline(1) =~ '^#.*-\*-.*mode:\s*rec.*-\*-' | setfiletype recfiles | endif

" Detect by content - files containing record descriptor patterns
au BufNewFile,BufRead * if search('^%rec:', 'nw') | setfiletype recfiles | endif
