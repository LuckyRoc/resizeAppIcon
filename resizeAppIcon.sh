#! /bin/bash

ROOT_DIR=$(pwd)

SOURCE_FILE="${ROOT_DIR}/1024.png"
echo $SOURCE_FILE
if [[ ! -e ${SOURCE_FILE} ]]; then
	echo "文件不存在"
	exit 1
fi
DEST_DIR="${ROOT_DIR}/icon"

if [[ -d ${DEST_DIR} ]]; then
	rm -rf dir ${DEST_DIR}
fi
mkdir -p "${DEST_DIR}"

Image_NAME=("20@2x.png" "20@3x.png" "29@2x.png" "29@3x.png" "40@2x.png" "40@3x.png" "60@2x.png" "60@3x.png" "20@1x.png" "20@2x.png" "29@1x.png" "29@2x.png" "40@1x.png" "40@2x.png" "76@1x.png" "76@2x.png" "83.5@2x.png" "1024@1x.png")
Image_SIZE=("40" "60" "58" "87" "80" "120" "120" "180" "20" "40" "29" "58" "40" "80" "76" "152" "167" "1024")


for ((i=0; i<${#Image_SIZE[@]} ;i++)); do
	size=${Image_SIZE[i]}
	sips -Z ${size} "${SOURCE_FILE}" --out "${DEST_DIR}/${Image_NAME[i]}"
done










