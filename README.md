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

[Upscalers Evaluation](Documents/Evaluation.md)

# Credits

# Original Real-ESRGAN Research

### Xintao Wang

https://xinntao.github.io/  
https://github.com/xinntao/ESRGAN  
https://github.com/xinntao/Real-ESRGAN  
https://arxiv.org/abs/1809.00219

# Original RIFE Research

### hzwer

https://github.com/hzwer  
https://github.com/hzwer/ECCV2022-RIFE  
https://arxiv.org/abs/2011.06294

# Implementations

### Nihui

https://github.com/nihui  
https://github.com/nihui/realsr-ncnn-vulkan  
https://github.com/nihui/rife-ncnn-vulkan  

### Xintao Wang

https://xinntao.github.io/  
https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan

### FFmpeg Developers

https://ffmpeg.org/

# Upscaler Models

Big part of the models were selected by Upscayl:  
https://github.com/upscayl  
https://github.com/upscayl/custom-models

### Xintao Wang

https://xinntao.github.io/  
https://github.com/xinntao/ESRGAN  
https://github.com/xinntao/Real-ESRGAN

- ESRGAN
- RealESRGAN-V3
- RealESRGAN-WDN
- RealESR-AnimeVideoV3
- RealESRNET

### Phhofm

https://github.com/Phhofm  
https://github.com/Phhofm/models

- LSDIR
- LSDIR-Plus-N
- LSDIR-Plus-C
- LSDIR-Compact-N3
- LSDIR-Compact-C3
- Nomos8KSC
- HFA2K

### N00MKRAD

https://nmkd.de/?esrgan  
https://github.com/n00mkrad

- NMKD-Siax-200K
- NMKD-Superscale-SP-178000-G

### Kim2091

https://github.com/Kim2091  
https://openmodeldb.info/users/kim2091

- UltraSharp

### FoolhardyVEVO

https://openmodeldb.info/users/foolhardy

- Remacri

# Licenses

[enhance-video-license](LICENSE.txt)

[realsr-ncnn-vulkan-license](Tool/realsr-ncnn-vulkan-LICENSE.txt)  
[realesrgan-ncnn-vulkan-license](Tool/realesrgan-ncnn-vulkan-LICENSE.txt)  
[rife-ncnn-vulkan-license](Tool/rife-ncnn-vulkan-LICENSE.txt)  
[Real-ESRGAN-license](Tool/Real-ESRGAN-LICENSE.txt)  
[ECCV2022-RIFE-license](Tool/ECCV2022-RIFE-LICENSE.txt)