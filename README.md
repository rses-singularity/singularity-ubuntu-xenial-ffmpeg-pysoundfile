# ffmpeg and pysoundfile in a Singularity image

* See [build.sh](build.sh) for info on how to build and run the image
* See [ubuntu-xenial-ffmpeg-pysoundfile.def](ubuntu-xenial-ffmpeg-pysoundfile.def) for the definition of the image, including
    * The (Docker) image it is based on 
    * What OS packages are installed 
    * What environment variables are set
* See [requirements.txt](requirements.txt) for the Python packages installed in the image (using `pip`)
* See the [Singularity](http://singularity.lbl.gov/) for more info on Singularity in general and detailed documentaiton.
