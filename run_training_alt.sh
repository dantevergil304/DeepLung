#!/bin/bash
set -e

cd detector
maxeps=12
f=9
CUDA_VISIBLE_DEVICES=0 python main.py --model res18 -b 12 --resume 004.ckpt --save-dir res18/retrft96$f/ --start-epoch 5 --epochs $maxeps --config config_training$f
