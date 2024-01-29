#!/bin/sh

# venv
python -m venv .venv
source .venv/bin/activate

# clone dino library
git clone https://github.com/facebookresearch/dino.git
cd dino
touch __init__.py
echo -e "import sys\nfrom os.path import dirname, join\nsys.path.insert(0, join(dirname(__file__), '.'))" >> __init__.py
cd ../

# This project only works if there is CUDA support
# Tested on Geforce RTX 3060 Mobile with NVIDIA official drivers and CUDA package, Arch Linux 6.7.2
pip install -r requirements.txt