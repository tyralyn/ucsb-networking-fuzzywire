CC		=	g++
CFLAGS 	=	-O2 -g -Wall -fmessage-length=0
LFLAGS 	=	-lwpcap

TARGET 	=	FuzzyWire.exe

SRC 	=	FuzzyWire.cpp fwReconstruct.cpp
OBJS 	=	$(SRC:.cpp=.o)

$(OBJS) : $(SRC)
	$(CC) $(CFLAGS) -c $(SRC)

$(TARGET):	$(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(LFLAGS)

all:	$(SRC) $(TARGET)

clean:
	rm -f *.o $(TARGET)
