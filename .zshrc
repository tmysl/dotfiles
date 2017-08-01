# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to change how often to autoi-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew history osx sublime brew-cask zsh-syntax-highlighting zsh-autosuggestions)

# User configuration

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tmysl/.rvm/bin"
export MANPATH="/usr/local/man:$MANPATH"
fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias commit="git commit -a"
alias passgen="date | md5"

#fasd aliases
eval "$(fasd --init posix-alias zsh-hook)"
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ANSIBLE_REPO=$HOME/ansible
export ANSIBLE_LIBRARY=/usr/local/share/ansible:${ANSIBLE_REPO}/library
export ANSIBLE_VAULT_PASSWORD_FILE=$HOME/.ansible-vault-pw
export ANSIBLE_ROLES_PATH=${ANSIBLE_REPO}/roles
export ANSIBLE_FILTER_PLUGINS=${ANSIBLE_REPO}/filter_plugins
export ANSIBLE_CALLBACK_PLUGINS=${ANSIBLE_REPO}/callback_plugins
export SLACK_ENABLED=0
export PATH="/usr/local/sbin:$PATH"
export EDITOR=vim
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:${PYTHONPATH}

#export PAGER=vimpager

setopt AUTO_CD

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#source "${HOME}/bastion/files/ansible-wrapper.sh"
