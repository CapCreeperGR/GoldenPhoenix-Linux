#!/bin/bash
sudo rm -rf ./output/
sudo mkdir ./output
sudo mkarchiso -v -w ./output -o ./output ./releng
