RUSTC ?= rustc

dummy1 := $(shell mkdir bin 2> /dev/null)

all:
	$(RUSTC) -O -o bin/racer src/main.rs
	mkdir -p plugin
	ln -s ../editors/racer.vim plugin/racer.vim

clean:
	rm -rf bin
	rm -rf plugin
