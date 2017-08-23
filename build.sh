#!/bin/bash

# Image definition (used for bootstrapping)
IMG_DEF="ubuntu-xenial-ffmpeg-pysoundfile.def"
# Image file (populated during bootstrapping)
IMG="${IMG_DEF%.*}.img"
# Initial image size in MB (will shrink after bootstrapping)
IMG_SIZE=2048  # MB

if [[ -f ${IMG} ]]; then
    echo 1>&2 "Need to remove the current image file before we can build a new one;"
    rm -i ${IMG}
fi
sudo singularity create -s "${IMG_SIZE}" "${IMG}" && \
sudo singularity bootstrap "${IMG}" "${IMG_DEF}" && \
echo "Now run this image using: singularity bootstrap ${IMG} /bin/bash"
