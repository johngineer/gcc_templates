# the name of the final executable
exec := main

# ----- organizational directories -------------------------------------------#
#
# object files (*.o)
obj := ./obj/
#
# source files (*.c, *.h)
src := ./src/
#
# gcc compiler messages
mesg := ./gccmesg/
#
# ----------------------------------------------------------------------------#

# output file list
ofiles  := $(obj)main.o $(obj)my_include.o

# output diagnostic message flags (uncomment one)
diag := -Q -fdiagnostics-color=always -fmessage-length=80 #		ANSI color
#diag := -fdiagnostics-color=always -fmessage-length=80 -H # 	 monochrome

# compiler message file extension (uncomment one)
msgext := gccmesg.ansi # 	for ANSI color output
#msgext := gccmesg.txt #	 for monochrome output

# remember to use the -c flag for the .o files
opts := -g -O0 -std=c99 -I./ -time

# put together the executable
main: main.o my_include.o
				gcc -I./ -g -o $(exec) $(ofiles) -lncurses 2> $(mesg)main_exec.$(msgext)

# compile main.c / main.h
main.o: $(src)main.c $(src)main.h
				gcc -c $(opts) $(diag) -o $(obj)main.o $(src)main.c 2> $(mesg)main.$(msgext)

# compile my_include.c / my_include.h
my_include.o: $(src)my_include.c $(src)my_include.h
				gcc -c $(opts) $(diag) -o $(obj)my_include.o $(src)my_include.c 2> $(mesg)my_include.$(msgext)

# delete all object files and error messages
clean:
#				rm ./grav
		    rm -rf $(obj)*
				rm -rf $(mesg)*
