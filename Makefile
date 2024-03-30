.POSIX:
.SUFFIXES:
HARE = hare
HAREFLAGS =

BIN = sample
SAMPLE_SRC = cmd/sample/main.ha

all: $(BIN)

sample: $(SAMPLE_SRC)

$(BIN):
	$(HARE) build $(HAREFLAGS) cmd/$@

check:
	$(HARE) test $(HAREFLAGS)

clean:
	rm -f $(BIN)
