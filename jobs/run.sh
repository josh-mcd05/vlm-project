#!/bin/bash
#SBATCH --job-name=experiment
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a100:1
#SBATCH --cpus-per-task=2
#SBATCH --mem=16G
#SBATCH --time=08:00:00
#SBATCH --output=logs/train_%j.out

mkdir -p training logs

source .venv/bin/activate

python3 -u scripts/experiment.py --task propaganda
