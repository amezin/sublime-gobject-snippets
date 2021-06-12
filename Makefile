#!/usr/bin/make -f

all:
.PHONY: all

%.sublime-snippet: %.sublime-snippet.in macros.m4 Makefile
	m4 --prefix-builtins -Dsource_file=$< $< >$@

ALL_SNIPPETS := $(patsubst %.sublime-snippet.in,%.sublime-snippet,$(wildcard *.sublime-snippet.in))

all: $(ALL_SNIPPETS)

clean:
	$(RM) $(ALL_SNIPPETS)

.PHONY: clean
