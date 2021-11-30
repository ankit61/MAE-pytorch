#!/bin/bash

#SBATCH --cpus-per-gpu=8
#SBATCH --time=48:00:00
#SBATCH --mem=80G
#SBATCH --gres=gpu:2
#SBATCH --partition=deepaklong
#SBATCH --nodelist=grogu-1-19

cd /grogu/user/aramchan/MAE-pytorch/

conda activate slot_attn; python3 run_mae_pretraining.py --data_set IMNET --data_path  /grogu/user/spurushw/datasets/imagenet/
