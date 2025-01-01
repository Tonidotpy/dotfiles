# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/tonidotpy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Size of history
HISTSIZE=1000

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Create dbus enviroment variables
export $(dbus-launch)

alias update='f(){sudo xbps-install -Su; sudo flatpak update; unset -f f;};f'
alias install='sudo xbps-install -Su'
alias remove='sudo xbps-remove -ROo'
alias query='sudo xbps-query'

alias lls='f(){ls $1 | cowsay -nf stegosaurus | lolcat; unset -f f;};f'
alias tellme='fortune -a | cowsay | lolcat'
alias lock='xset s activate'
alias connect='sudo nmcli connection up'

alias amogus="echo '\033[1;91m\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28e0\u28e4\u28e4\u28e4\u28e4\u28e4\u28f6\u28e6\u28e4\u28c4\u2840\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2880\u28f4\u28ff\u287f\u281b\u2809\u2819\u281b\u281b\u281b\u281b\u283b\u28bf\u28ff\u28f7\u28e4\u2840\u2800\u2800\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28fc\u28ff\u280b\u2800\u2800\u2800\u2800\u2800\u2800\u2800\033[1;96m\u2880\u28c0\u28c0\033[1;91m\u2808\u28bb\u28ff\u28ff\u2844\u2800\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\033[1;31m\u28f8\033[1;91m\u28ff\u284f\u2800\u2800\u2800\033[1;96m\u28e0\u28f6\u28fe\u28ff\u28ff\u28ff\u283f\u283f\u283f\u28bf\u28ff\u28ff\u28ff\u28c4\033[1;91m\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\033[1;31m\u28ff\033[1;91m\u28ff\u2801\u2800\u2800\033[1;36m\u28b0\033[1;96m\u28ff\u28ff\u28ef\u2801\033[1;97m\u28f4\u28f6\u28fe\u28ff\u28ff\u28f7\u28e6\033[1;96m\u2808\u2819\u28bf\u28f7\u2844\033[1;91m\u2800
\u2800\u2800\u28c0\u28e4\u28f4\u28f6\u28f6\033[1;31m\u28ff\033[1;91m\u285f\u2800\u2800\u2800\033[1;36m\u28b8\u28ff\033[1;96m\u28ff\u28ff\u28c6\033[1;97m\u2808\u2819\u281b\u281b\u281b\u280b\u2801\u2800\u2800\u2800\033[1;96m\u28ff\u28f7\033[1;91m\u2800
\u2800\u28b0\u28ff\u285f\u280b\u2809\033[1;31m\u28f9\u28ff\u2847\u2800\u2800\u2800\033[1;36m\u2818\u28ff\u28ff\033[1;96m\u28ff\u28ff\u28f7\u28e6\u28e4\u28e4\u28e4\u28f6\u28f6\u28f6\u28f6\u28ff\u28ff\033[1;36m\u28ff\033[1;91m\u2800
\u2800\u28b8\u28ff\u2847\u2800\u2800\033[1;31m\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\033[1;36m\u2839\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u28ff\u287f\u2803\033[1;31m\u2800
\u2800\u28f8\u28ff\u2847\u2800\u2800\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\u2800\033[1;36m\u2809\u283b\u283f\u28ff\u28ff\u28ff\u28ff\u287f\u283f\u283f\u281b\033[1;31m\u28bb\u28ff\u2847\u2800\u2800
\u2800\u28ff\u28ff\u2801\u2800\u2800\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28b8\u28ff\u28e7\u2800\u2800
\u2800\u28ff\u28ff\u2800\u2800\u2800\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28b8\u28ff\u28ff\u2800\u2800
\u2800\u28ff\u28ff\u2800\u2800\u2800\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28b8\u28ff\u28ff\u2800\u2800
\u2800\u28bf\u28ff\u2846\u2800\u2800\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28b8\u28ff\u2847\u2800\u2800
\u2800\u2838\u28ff\u28e7\u2840\u2800\u28ff\u28ff\u2847\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28ff\u28ff\u2803\u2800\u2800
\u2800\u2800\u281b\u28bf\u28ff\u28ff\u28ff\u28ff\u28c7\u2800\u2800\u2800\u2800\u2800\u28f0\u28ff\u28ff\u28f7\u28f6\u28f6\u28f6\u28f6\u2836\u2800\u28a0\u28ff\u28ff\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28ff\u28ff\u2800\u2800\u2800\u2800\u2800\u28ff\u28ff\u2847\u2800\u28fd\u28ff\u284f\u2801\u2800\u2800\u28b8\u28ff\u2847\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28ff\u28ff\u2800\u2800\u2800\u2800\u2800\u28ff\u28ff\u2847\u2800\u28b9\u28ff\u2846\u2800\u2800\u2800\u28f8\u28ff\u2807\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u28bf\u28ff\u28e6\u28c4\u28c0\u28e0\u28f4\u28ff\u28ff\u2801\u2800\u2808\u283b\u28ff\u28ff\u28ff\u28ff\u287f\u280f\u2800\u2800\u2800\u2800
\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2808\u281b\u283b\u283f\u283f\u283f\u283f\u280b\u2801\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\u2800\033[0m'"

alias vabon="echo '
   ___      ___ ________          ________  ________  ________           ________  ________  ___     
  |\\  \\    /  /|\\   __  \\        |\\   __  \\|\\   __  \\|\\   ___  \\        |\\   ___ \\|\\   __  \\|\\  \\    
  \\ \\  \\  /  / | \\  \\|\\  \\       \\ \\  \\|\\ /\\ \\  \\|\\  \\ \\  \\\\\\ \\  \\       \\ \\  \\_|\\ \\ \\  \\|\\  \\ \\  \\   
   \\ \\  \\/  / / \\ \\   __  \\       \\ \\   __  \\ \\  \\\\\\\\\\  \\ \\  \\\\\\ \\  \\       \\ \\  \\ \\\\\\ \\ \\   __  \\ \\  \\  
    \\ \\    / /   \\ \\  \\ \\  \\       \\ \\  \\|\\  \\ \\  \\\\\\\\\\  \\ \\  \\\\\\ \\  \\       \\ \\  \\_\\\\\\ \\ \\  \\ \\  \\ \\  \\ 
     \\ \\__/ /     \\ \\__\\ \\__\\       \\ \\_______\\ \\_______\\ \\__\\\\\\ \\__\\       \\ \\_______\\ \\__\\ \\__\\ \\__\\
      \\|__|/       \\|__|\\|__|        \\|_______|\\|_______|\\|__| \\|__|        \\|_______|\\|__|\\|__|\\|__|
\033[0m' | lolcat"

export UN_PEZZO_COUNTER=0

alias unpezzo='(( ++UN_PEZZO_COUNTER )); echo -n "$UN_PEZZO_COUNTER "; [ $UN_PEZZO_COUNTER -le 1 ] && echo pezzo || echo pezzi'

# Add folders to path
PATH="/opt/texlive/2024/bin/x86_64-linux:$HOME/sources/renode:$HOME/.local/bin:/usr/lib/ruby/gems/3.2.0/bin:$PATH"
tellme

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tonidotpy/sources/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tonidotpy/sources/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tonidotpy/sources/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tonidotpy/sources/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

