# vlc + file + port
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/vlc/lib/
cvlc   $1   --sout "#rtp{access=tcp,sdp=rtsp://:$2/test1}"  --loop
