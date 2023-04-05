#!/usr/bin/env bash

#set -x

PY_ARGS=${@:1}

source ~/.bashrc 
conda activate deformable_detr
module load cuda/10.0
module load gcc/6.1.0

python -u /gpfs/data/geraslab/Yanqi/Deformable-DETR/main.py \
    --coco_path /gpfs/data/geraslab/public_datasets/coco \
    ${PY_ARGS}
