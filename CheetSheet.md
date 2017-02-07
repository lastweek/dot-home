# GDB:
## a) Kernel Call Trace
	Call Trace:
		[<ffffffffa067d827>] foo.0x333/0x666
		[<ffffffffa1111111>] bar.0x222/0x444
	
	(gdb) list *(foo+0x333)
	(gdb) list *(bar+0x222)


# Tmux:
	setw -g mode-keys vi
	setw synchronize-panes


# Grubby
	grubby --set-default="/boot/vmlinuz-2.6.10"
	grubby --default-kernel
