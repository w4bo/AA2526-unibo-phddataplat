#!/bin/bash
set -e
# "lab-01-dataunderstanding.ipynb" "lab-02-housing.ipynb" "lab-03-datapreparation.ipynb" "lab-04-housing.ipynb" "lab-05-ml.ipynb" "lab-06-housing.ipynb"
for FILE in *lab-01-Metadata.ipynb; do  # *.ipynb
    echo "Processing $FILE file...";
    if [[ "$FILE" == *"lab-00"* ]]; then
        echo "Skipping $FILE"
        continue
    fi
    filename=$(basename -- "$FILE")
    extension="${filename##*.}"
    filename="${filename%.*}"
    jupyter nbconvert --execute --to notebook --inplace "$FILE"
done