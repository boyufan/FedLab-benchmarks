#!/bin/bash

# download data and convert to .json format

if [ ! -d "data/all_data" ] || [ ! "$(ls -A data/all_data)" ]; then
    cd preprocess
    bash data_to_json.sh
    cd ..
fi

NAME="sent140" # name of the dataset, equivalent to directory name

cd ../utils

bash preprocess.sh --name $NAME $@

cd ../$NAME