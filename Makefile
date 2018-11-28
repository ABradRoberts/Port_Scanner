CC=g++
CFLAGS=-Wall -Werror 

BIN=main
EXE=scan
EXT=cpp

make: $(BIN).$(EXT)
	$(CC) $(BIN).$(EXT) $(CFLAGS) -o $(EXE)

clean:
	rm -f $(BIN)