# INSTALL INSTRUCTIONS: save as ~/.gdbinit
#
# DESCRIPTION: A user-friendly gdb configuration file.
#

# __________________my gdb options_________________

# Set the default disassembly output type
set disassembly-flavor intel

# Disable confirmation questions
set confirm off

# Set prompt color for gdb
set prompt \033[01;31mgdb$ \033[0m

# Always set a breakpoint at main
break main




