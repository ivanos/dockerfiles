.PHONY: all ivanos privileged leviathan ling lincx

all: ivanos privileged leviathan ling lincx


ivanos:
	cd ivanos && docker build -t ivanos/core:devel-erl .

privileged:
	cd privileged && docker build -t ivanos/core:priv-1 .

leviathan:
	cd leviathan && docker build --no-cache -t ivanos/leviathan:rel-0.5 .

ling:
	cd ling && docker build --no-cache -t ivanos/ling:devel-1 .

lincx:
	cd lincx && docker build --no-cache -t ivanos/lincx:devel-2 .
