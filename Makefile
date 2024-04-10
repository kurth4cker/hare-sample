.POSIX:
.SUFFIXES:
HARE = hare
# HAREFLAGS =

BIN = sample sha256sum

all: $(BIN)

sample: cmd/sample/main.ha
sha256sum: cmd/sha256sum/main.ha

$(BIN):
	$(HARE) build $(HAREFLAGS) -o $@ cmd/$@/

clean:
	rm -f $(BIN)
