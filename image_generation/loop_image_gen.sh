#!bin/bash
# A script that loops through the image generation process for a given number of times.

blender_path="/home/pci/Downloads/blender-2.78c-linux-glibc219-x86_64/blender"
output_image_dir="../CLEVR_2obj_w_pose/images/new/"

i=0
j=1
end=18

while [ $i -lt $end ]
do
        start_idx=$(ls $output_image_dir | wc -l)
        echo $start_idx
        i=$(( $i +  $j ))
        timeout 600 $blender_path --background --python render_images.py -- --num_images 50000 --use_gpu 1 --width 256 --height 256 --camera_jitter 0.0 --min_objects 2 --max_objects 2 --output_image_dir $output_ima>
done