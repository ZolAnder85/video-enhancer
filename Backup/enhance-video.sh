if [[ $1 == "" ]]
then
	read -p "What upscale model to use? (none) " upscaler
	read -p "How to scale it down? (none) " downscale
	read -p "How many interpolations to execute? (3) " iCount
	read -p "What should the target FPS be? (30) " tFPS
	read -p "How much motion blur should be added? (0) " mBlur
	read -p "To what FPS should we downsample? (30) " rFPS
	read -p "Should intermediate data be cleaned up? (yes) " cleanup
	read -p "Should near-lossless video encoding be used? (no) " lossless
	read -p "What is the input folder or video? (input.mp4) " input
	read -p "What should the output be named? (output.mp4) " output
elif [[ $10 == "" ]]
then
	echo "Usage:"
	echo "enhace-video"
	echo "enhace-video upscaler downscale iCount tFPS mBlur rFPS cleanup lossless input output"
	exit 1
else
	upscaler=$1
	downscale=$2
	iCount=$3
	tFPS=$4
	mBlur=$5
	rFPS=$6
	cleanup=$7
	lossless=$8
	input=$9
	output=$10
fi

if [[ $upscaler == "none" ]]
then
	upscaler=""
fi

if [[ $downscale == "none" ]]
then
	downscale=""
fi

iCount=${iCount:-"3"}
tFPS=${tFPS:-"30"}
mBlur=${mBlur:-"0"}
rFPS=${rFPS:-"30"}
cleanup=${cleanup:-"yes"}
lossless=${lossless:-"no"}
input=${input:-"input.mp4"}
output=${output:-"output.mp4"}

current="enhance-video-input"
mkdir "$current"
if [[ -f "$input" ]]
then
	ffmpeg -i "$input" "$current/%08d.png"
else
	cp "$input/*.png" "$current"
fi

if [[ $upscaler ]]
then
	next="enhace-video-upscaled"
	mkdir "$next"
	./realesrgan-ncnn-vulkan -i "$current" -o "$next" -n "$upscaler"
	if [[ $cleanup == YES ]] || [[ $cleanup == Yes ]] || [[ $cleanup == yes ]] || [[ $cleanup == Y ]] || [[ $cleanup == y ]]
	then
		rm -rf "$current"
	fi
	current=$next
fi

if [[ $downscale ]]
then
	next="enhace-video-downscaled"
	mkdir "$next"
	ffmpeg -pattern_type glob -i "$current/*.png" -filter:v scale=$downscale:sws_flags=lanczos "$next/%08d.png"
	if [[ $cleanup == YES ]] || [[ $cleanup == Yes ]] || [[ $cleanup == yes ]] || [[ $cleanup == Y ]] || [[ $cleanup == y ]]
	then
		rm -rf "$current"
	fi
	current=$next
fi

factor=1
for (( i = 0; i < $iCount; ++i ))
do
	(( factor = factor * 2 ))
	next="enhance-video-x$factor"
	mkdir "$next"
	./rife-ncnn-vulkan -i "$current" -o "$next"
	if [[ $cleanup == YES ]] || [[ $cleanup == Yes ]] || [[ $cleanup == yes ]] || [[ $cleanup == Y ]] || [[ $cleanup == y ]]
	then
		rm -rf "$current"
	fi
	current=$next
done

if (( $rFPS == $tFPS ))
then
	if (( $mBlur > 0 ))
	then
		filter="-filter:v tmix=frames=$mBlur"
	fi
elif (( $mBlur > 0 ))
then
	filter="-filter:v tmix=frames=$mBlur,framerate=$rFPS"
else
	filter="-filter:v framerate=$rFPS"
fi

if [[ $lossless == YES ]] || [[ $lossless == Yes ]] || [[ $lossless == yes ]] || [[ $lossless == Y ]] || [[ $lossless == y ]]
then
	encoding="-c:v libx265 -preset fast -crf 0 -pix_fmt yuv444p -tag:v hvc1"
else
	encoding="-c:v libx264 -preset fast -crf 20 -pix_fmt yuv420p"
fi

ffmpeg -framerate "$tFPS" -pattern_type glob -i "$current/*.png" \
	-colorspace smpte170m -color_primaries smpte170m -color_trc smpte170m \
	$filter $encoding "$output"

if [[ $cleanup == YES ]] || [[ $cleanup == Yes ]] || [[ $cleanup == yes ]] || [[ $cleanup == Y ]] || [[ $cleanup == y ]]
then
	rm -rf "$current"
fi