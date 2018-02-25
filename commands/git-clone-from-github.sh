source functions.sh
if [ $# = 1 ] && [ $1 != "-h" ]
then 
   git clone git@github.com:ryder1986/$1
else
	ARG_NO=$#
	funtion_help  1 "get $ARG_NO args ,invalid usage,should be: [ cmd + projectname ], like [ git-clone projectxx ]"
fi

 
