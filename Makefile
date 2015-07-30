.PHONY: all ivanos leviathan privileged

all: ivanos leviathan privileged


ivanos:
	cd ivanos && docker build -t ivanos/core:devel-erl .

leviathan:
	cd leviathan && docker build -t ivanos/leviathan:devel-2 .

privileged:
	cd privileged && docker build -t ivanos/core:priv-1 .
