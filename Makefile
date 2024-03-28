.POSIX:
.SUFFIXES:
HARE = hare
HAREFLAGS =

BIN = sample

all: $(BIN)

$(BIN):
	$(HARE) build $(HAREFLAGS) cmd/$@

check:
	$(HARE) test $(HAREFLAGS)

clean:
	rm -f $(BIN)
