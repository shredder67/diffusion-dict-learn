# Note: do not forget to change MODEL_FLAGS if other pretrained DDPMs are used.

MODEL_FLAGS="--attention_resolutions 32,16,8 --class_cond False --diffusion_steps 1000 --dropout 0.1 --image_size 256 --learn_sigma True --noise_schedule linear --num_channels 256 --num_head_channels 64 --num_res_blocks 2 --resblock_updown True --use_fp16 True --use_scale_shift_norm True"
DATASET="bedroom_28"

python collect_features.py --exp experiments/${DATASET}/ddpm_sae.json $MODEL_FLAGS