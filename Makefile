.PHONY: all ivanos leviathan

all: ivanos leviathan


ivanos:
	cd ivanos && docker build -t ivanos/core:devel-erl .

leviathan:
	cd leviathan && docker build -t ivanos/leviathan:devel-2 .
