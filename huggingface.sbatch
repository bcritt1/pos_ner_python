#!/usr/bin/bash
#SBATCH --job-name=huggingface
#SBATCH --output=/home/users/%u/out/huggingface.%j.out
#SBATCH --error=/home/users/%u/err/huggingface.%j.err
#SBATCH -p hns
#SBATCH -c 1
#SBATCH --mem=32GB
ml python/3.12.1 py-transformers/4.39.1_py312 torch py-torchvision/0.19.1_py312 py-pytorch/2.4.1_py312
python3 huggingface.py
