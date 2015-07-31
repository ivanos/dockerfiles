.PHONY: all ivanos privileged leviathan 

all: ivanos privileged leviathan


ivanos:
	cd ivanos && docker build -t ivanos/core:devel-erl .

privileged:
	cd privileged && docker build -t ivanos/core:priv-1 .

leviathan:
	cd leviathan && docker build --no-cache -t ivanos/leviathan:node-1 .
