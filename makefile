############################################################
# Makefile for SFIFO 2.0
# Copright (c) 2000-2002, 2009, 2012 David Olofson
#-----------------------------------------------------------
# Note: Not bothering building proper shared libraries here.
#	Just include sfifo.[ch] in your project!
############################################################

FLAGS = -O3 -Wall -g -I../../include -Iinclude

all:		libs/sfifo.o

test:		sftest

clean:
		-rm -rf *.o
		-rm -rf libs/*.o
		-rm -rf tests/*

libs/sfifo.o:	sfifo.c include/sfifo.h
		gcc ${FLAGS} -c sfifo.c -o libs/sfifo.o

sftest:		sfifo.c include/sfifo.h
		gcc ${FLAGS} -D_SFIFO_TEST_ -o tests/sftest sfifo.c -lpthread
