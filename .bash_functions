function psgrep() {
        if [[ $1 == "-u" ]]; then
                ps aux | grep -v grep | grep $2 | awk '{ print $2 " : " $11}' | tee .temp
                CMDS=$(cat .temp)
        elif [[ $1 != "" ]]; then
                ps aux | grep -v grep | grep "$1" | awk '{ print $11 " : " $2 " : " $1 }' | tee .temp
                CMDS=$(cat .temp)
        fi
        if [[ $CMDS == "" ]]; then
                echo "no matching process"
        fi
        rm -f .temp
}



function pskill() {
        if [[ $1 ]]; then
                psgrep $1
                shift
                if [[ $CMDS != "" ]]; then
                        echo -e "\nenter process number to kill:\n"
                        read ID
                        if [[ ! $ID == 0 || ! $ID == "" ]]; then
                                kill $@ $ID
                        fi
                fi
        fi
}

###### Usage: mkalias <name> "<command>"
# Example: mkalias rm "rm -i"
function mkalias()
{
        if [[ $1 && $2 ]]
        then
        echo -e "alias $1=\"$2\"" >> ~/.bashrc
        alias $1=$2
        source ~/.bashrc
        fi
}

function mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }



function mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }



function mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

function rsync_send_file() {
        if [[ $1 && $2 ]]
        then
                rsync -av -rsh='ssh' -av --progress --partial $1 fsoigneux@$2:$1
        else
                echo -n "help: \$1: file to send and \$2: destination server"
        fi
}

function rsync_get_file() {
        if [[ $1 && $2 ]]
        then
                rsync -av -rsh='ssh' -av --progress --partial fsoigneux@$2:$1 $1
        else
                echo -n "help: \$1: file to get and \$2: source server"                                                                                                                                                                      
        fi
}

SSH_AGENT_CONF="/home/fsx/.ssh/agent"
if [ -e "$SSH_AGENT_CONF" ];then
        . $SSH_AGENT_CONF > /dev/null
fi
ssh-add -l 2>/dev/null >/dev/null
if [ $? -ne 0 ];then
        ssh-agent > $SSH_AGENT_CONF
        if [ $? -ne 0 ];then
                echo "ERROR: Could no launch ssh-agent" >&2
        fi
        . $SSH_AGENT_CONF > /dev/null
        ssh-add
fi

docksh() {
    if [[ -z "$2" ]]; 
	then
    	docker exec -it $1 bash
	else 
		docker exec -it --user=$2 $1 bash;
	fi
}  
