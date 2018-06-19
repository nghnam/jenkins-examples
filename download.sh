#!/bin/bash

DATA_DIR="/data"
declare -a dataset=(
    "http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz"
    "http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz"
    "http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz"
    "http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz"
)

for ds in "${dataset[@]}"; do
    fn=$(echo $ds | awk -F'/' '{print $NF}')
    if [ ! -f "$DATA_DIR/$fn" ]; then
        wget $ds -P $DATA_DIR
    fi
done