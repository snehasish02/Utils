# INSTALL INSTRUCTIONS: save as ~/.gdbinit
#
# DESCRIPTION: A user-friendly gdb configuration file.
#

# __________________my gdb options_________________

# Set the default disassembly output type
set disassembly-flavor intel

# Disable confirmation questions
set confirm off

set pretty print on

# Saves gdb command histories across sessions
set history save on

# C-x-a is the shortcut to turn tui mode on/off
# Ctrl-p & ctrl-n to browse through previous commands
# focus next/previous to change the focussed split
# Set the layout to display regs and source 
layout regs

# Set the layout to display only src: useful for c code
#layout src

# Set prompt color for gdb
#set prompt \033[01;31mgdb$ \033[0m

# Always set a breakpoint at main
break main




