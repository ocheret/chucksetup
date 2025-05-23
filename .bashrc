#
# Bash startup file
#
echo .bashrc
source ~/.bash_env
source ~/.bash_path
source ~/.bash_aliases
source ~/.bash_functions
source ~/.common_rc

if [ -f ~/git-completion.bash ]
then    source ~/git-completion.bash
        PS1='[\h:\W$(__git_ps1 " (%s)")]\!\$ '
else    PS1='\h:\W \!\$ '
fi
