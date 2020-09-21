" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

au BufRead,BufNewFile *.p4		set filetype=p4
