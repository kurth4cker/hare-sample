.POSIX:
.SUFFIXES:
HARE = hare
HAREFLAGS =

BIN = sample sha256sum uname

all: $(BIN)

sample: cmd/sample/main.ha
sha256sum: cmd/sha256sum/main.ha
uname: cmd/uname/main.ha

$(BIN):
	$(HARE) build -q $(HAREFLAGS) -o $@ cmd/$@/

clean:
	rm -f $(BIN)

check:
	$(HARE) test $(HAREFLAGS)
