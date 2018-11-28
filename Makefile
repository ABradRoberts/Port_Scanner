CC=g++
CFLAGS=-Wall -Werror 

BIN=scanner
EXT=cpp

make: $(BIN).$(EXT)
	$(CC) $(BIN).$(EXT) $(CFLAGS) -o $(BIN)

clean:
	rm -f $(BIN)