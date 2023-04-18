#!bin/bash
# A script that loops through the image generation process for a given number of times.

blender_path="/home/pci/Downloads/blender-2.78c-linux-glibc219-x86_64/blender"
output_image_dir="../CLEVR_2obj_w_pose/images/new/"

start_idx = ls $output_image_dir | wc -l

while true
do
    timeout 600 $blender_path --background --python render_images.py -- --num_images 50000 --use_gpu 1 --width 256 --height 256 --camera_jitter 0.0 --min_objects 2 --max_objects 2 --output_image_dir ../CLEVR_2obj_w_pose/images/new/ --output_scene_dir ../CLEVR_2obj_w_pose/scenes/new/ --output_scene_file ../CLEVR_2obj_w_pose/scenes/CLEVR_new_scenes.json --start_idx start_idx
done