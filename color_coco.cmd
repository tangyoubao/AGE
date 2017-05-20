pdir=data/checkpoints/color_coco; mkdir -p data/checkpoints/color_coco;PYTHONWARNINGS=ignore CUDA_VISIBLE_DEVICES=2 python age.py --dataset colorization_ --dataroot ~/data/MSCOCO/dataset1 --image_size 64 --save_dir data/checkpoints/color_coco --lr 0.0006 --nz 24 --batch_size 64 --netG conditional_64px --netE conditional_64px --e_updates '1;KL_fake:0.5,KL_real:1,match_z:0,match_x:0' --g_updates '4;KL_fake:1,match_z:0,match_x:0' --ngpu 1 --nepoch 200 --workers 8 | tee data/checkpoints/color_coco/log.log
