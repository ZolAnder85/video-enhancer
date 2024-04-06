# Video Enhancer

This GitHub repository is for an app which automates the following tools to enhance videos and images:
- realesrgan-ncnn-vulkan
- rife-ncnn-vulkan
- ffmpeg

It is the functionality of `enhance-video.sh` and `enhance-scenes.sh` I want to rewrite as an app.

The format of the downscale parameter comes from FFmpeg:
- Example for relative resizing: `iw/2:ih/2`
- Example for absolute resizing: `1920:-1`
Keep in mind that some encodings require even numbers for width and height.

# Special Thanks

Xintao Wang
https://xinntao.github.io/
https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan

Nihui
https://github.com/nihui
https://github.com/nihui/rife-ncnn-vulkan

FFmpeg developers
https://ffmpeg.org/