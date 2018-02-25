# vlc + file + port
cvlc   $1   --sout "#rtp{access=tcp,sdp=rtsp://:$2/test1}"  --loop
