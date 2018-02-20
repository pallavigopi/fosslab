#!/bin/bash

x=$(logname)
echo "Currently logged user and his logname: $x"
echo "Current Shell: $SHELL"
echo "Home Directory $HOME"
echo "Operating System Type $(arch)"
echo "Current path Setting: $PATH"
echo "Current working directory is $(pwd)"
echo "Currently logged number of users: $(users)"
