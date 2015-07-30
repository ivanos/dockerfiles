#!/bin/bash

docker run -v /run:/run -v /var:/host/var -v /proc:/host/proc  --net=host --privileged=true -i -t ivanos/leviathan:devel-5 /bin/bash
