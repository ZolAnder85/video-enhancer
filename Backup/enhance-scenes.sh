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
	read -p "What is the input folder for scenes? (input) " input
	read -p "How should the output name end? (output.mp4) " output
elif [[ ${10} == "" ]]
then
	echo "Usage:"
	echo "enhace-scenes"
	echo "enhace-scenes upscaler downscale iCount tFPS mBlur rFPS cleanup lossless input output"
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
	output=${10}
fi

upscaler=${upscaler:-"none"}
downscale=${downscale:-"none"}
iCount=${iCount:-"3"}
tFPS=${tFPS:-"30"}
mBlur=${mBlur:-"0"}
rFPS=${rFPS:-"30"}
cleanup=${cleanup:-"yes"}
lossless=${lossless:-"no"}
input=${input:-"input"}
output=${input:-"output.mp4"}

rm -rf "$input"/.DS*

for scene in "$input"/*
do
	./enhance-video.sh "$upscaler" "$downscale" "$iCount" "$tFPS" "$mBlur" "$rFPS" "$cleanup" "$lossless" "$scene" "$scene-$output"
done