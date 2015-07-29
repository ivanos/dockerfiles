.PHONY: all ivanos leviathan

all: ivanos leviathan


ivanos:
	cd ivanos && docker build -t sigstop/ivanos:devel-erl .

leviathan:
	cd leviathan && docker build -t sigstop/leviathan:devel-2 .
