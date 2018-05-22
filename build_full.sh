#! /bin/bash

# dev phase : only once -s  for sandbox   
sudo singularity build -s issac.simg issac.def

# Enter the container shell
sudo singularity shell --writable issac.simg 

# prod phase   
# sudo singularity build --writable melody.img issac.simg 
