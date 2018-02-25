# push this file in /etc/bash_completion.d/

function _ssss()
{
 local word=${COMP_WORDS[COMP_CWORD]}
 local SSS='$(ls /root/repo-github/bash-scripts/commands/ )'
 COMPREPLY=($(compgen   -W  "${SSS}"  "${word}" ))
}
function _ppp()
{
 local word=${COMP_WORDS[COMP_CWORD]}
 local cmds='$(ls /root/repo-github/bash-scripts/commands/ )'
 COMPREPLY=($(compgen   -W "${cmds}"  ))
 COMPREPLY+=($(compgen   -W   "${word}" ))
}
# complete usage:  function + cmd , this will get hint when cmd tab
complete -F _ppp call-command

