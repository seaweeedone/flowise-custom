#!/bin/bash

#nerdctl build -t flowise:subpath .
nerdctl build -t flowise:1.1 .
nerdctl tag flowise:1.1 localhost:5000/flowise:1.1
nerdctl push localhost:5000/flowise:1.1
