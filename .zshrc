# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/fsx/.oh-my-zsh"
  export TERM="xterm-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"

# Coloured man pages using less as pager
#man() {
#    env \
#	      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#	      LESS_TERMCAP_md=$(printf "\e[1;31m") \
#	      LESS_TERMCAP_me=$(printf "\e[0m") \
#	      LESS_TERMCAP_se=$(printf "\e[0m") \
#	      LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#	      LESS_TERMCAP_ue=$(printf "\e[0m") \
#	      LESS_TERMCAP_us=$(printf "\e[1;36m") \
#	      man "$@"
#}

# Aliases for a few useful commands
alias ip="ip -c"
alias rm="rm -i"
alias ls="ls -lah"

# Show OS info when opening a new terminal
#neofetch

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=$'\ue0b0'

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue231'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Context
DEFAULT_USER=$USER
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='green'
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{cyan}%n%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'

# Dirs
POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_PATH_ABSOLUTE='False'
POWERLEVEL9K_SHORTEN_DIR_LENGTH="255"
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
#POWERLEVEL9K_LINUX_ICON='%F{cyan}\uf300 %F{white}arch%F{cyan}linux%f'
POWERLEVEL9K_LINUX_ICON='%F{cyan}\uf302%f'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'

POWERLEVEL9K_VIRTUALENV_BACKGROUND='cyan'
POWERLEVEL9K_CFYENV_FOREGROUND='yellow'
POWERLEVEL9K_CFYENV_BACKGROUND='green'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Status
POWERLEVEL9K_OK_ICON=$'\uf164'
POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %d.%m.%y}"
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'


# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh
# Plugins to load
plugins=(git, vscode, virtualenv, docker, docker-compose)

#prompt_cfyenv()
#{
#	if [[ $(/home/fsx/parse_cfy_json.py &>/dev/null; echo $?) -eq 0 ]]; then
#		cf_target_return=$(/home/fsx/parse_cfy_json.py)
#		API=$(echo ${cf_target_return} | awk -F " " '{printf "%s", $1}')
#                Instance=$(echo ${cf_target_return} | awk -F " " '{printf "%s", $2}')
#                Site=$(echo ${cf_target_return} | awk -F " " '{printf "%s", $3}')
#                Org=$(echo ${cf_target_return} | awk -F " " '{printf "%s", $4}')
#                Space=$(echo ${cf_target_return} | awk -F " " '{printf "%s", $5}')
#
#		"$1_prompt_segment" "$1" "$2" "green" "$DEFAULT_COLOR" "CFY: $Instance - $Site - $Org - $Space \uf216" ''
#	else
#		"$1_prompt_segment" "$1" "$2" "pink" "$DEFAULT_COLOR" "CFY: Not logged \uf216" ''
#	fi
#}

################################################################
# dockerenv: depending on $DOCKER_HOST, print which swarm cluster is targetted
#prompt_dockerenv() {
#  case ${DOCKER_HOST} in
#    localhost:2383)
#      "$1_prompt_segment" "$0" "$2" "cyan" "$DEFAULT_COLOR" "sph-rec-priv \uf308" ''
#    ;;
#    localhost:2377)
#      "$1_prompt_segment" "$0" "$2" "red" "$DEFAULT_COLOR" "sph-prod-priv \uf308" ''
#    ;;
#    localhost:2379)
#      "$1_prompt_segment" "$0" "$2" "red" "$DEFAULT_COLOR" "bgl-prod-priv \uf308" ''
#    ;;
#    localhost:2381)
#      "$1_prompt_segment" "$0" "$2" "red" "$DEFAULT_COLOR" "mts-prod-priv \uf308" ''
#    ;;
#  esac
#}

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir virtualenv vcs  )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs time )
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs dockerenv cfyenv time )
 
#source $ZSH/oh-my-zsh.sh

# - s'assurer que virtualenvwrapper est toujours disponible
source /usr/local/bin/virtualenvwrapper.sh

if [ -f ${HOME}/.bash_export ]; then
    . ${HOME}/.bash_export
fi

#virtualenv python

# Config a ajouter dans ~/.bashrc ou ~/.profile
# - dossier contenant les environnements virtuels
#export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
# - dossier contenant les projets associés
#export PROJECT_HOME=~/pyprojects
mkdir -p $PROJECT_HOME

if [ -f ${HOME}/.bash_functions ]; then
    . ${HOME}/.bash_functions
fi
if [ -f ${HOME}/.bash_aliases ]; then
    . ${HOME}/.bash_aliases
fi
