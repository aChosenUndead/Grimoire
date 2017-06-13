INCLUDES = -I "../h"

PROG = ../../bin/exe
CC = g++
CPPFLAGS = -Wall -W -pedantic -g -std=c++11
OBJS = monster.o grimoire.o page.o main.o

$(PROG) : $(OBJS)
	$(CC) -o $(PROG) $(OBJS)

monster.o: Monster.cpp
	$(CC) $(CPPFLAGS) $(INCLUDES) -c Monster.cpp

grimoire.o : Grimoire.cpp
	$(CC) $(CPPFLAGS) $(INCLUDES) -c Grimoire.cpp

page.o : Fight.cpp
	$(CC) $(CPPFLAGS) $(INCLUDES) -c Fight.cpp

main.o : main.cpp
	$(CC) $(CPPFLAGS) $(INCLUDES) -c main.cpp

clean:
	rm *.o