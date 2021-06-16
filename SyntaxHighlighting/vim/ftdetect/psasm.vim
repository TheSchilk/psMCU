" Automatically detect '.psASM' files for syntax highlighting

au BufRead,BufNewFile *.psASM set filetype=psasm
au FileType psasm setlocal commentstring=#\ %s
