.POSIX:
.SUFFIXES:
HARE = hare
# HAREFLAGS =

BIN = sha256sum

all: $(BIN)

$(BIN):
	$(HARE) build $(HAREFLAGS) -o $@ cmd/$@/

clean:
	rm -f $(BIN)
