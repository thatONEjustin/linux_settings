# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export zthemes="$ZSH/themes"
export FONTS="/usr/local/share/fonts"


export portainer="/portainer"
export downloads="$portainer/downloads"
export media="/media"
export tv="/media/video/tv"
export movies="/media/video/movies"
export git="$HOME/GitHub"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="junkfood"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# Alias commands
alias ls='ls -a --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias pbcopy='xclip -selection clipboard'
alias torrents="cd $downloads"

alias sedit="sudo nano /etc/samba/smb.conf"
alias ipshow='ip -c link show'

# faster edit of the sources list
alias sources="sudo nano /etc/apt/sources.list"

# ZSH stuff
alias zedit="nano $HOME/.zshrc" 
alias zload="source $HOME/.zshrc"
alias zhist="sudo nano $HOME/.zsh_history"
alias zthemes="ls $ZSH/themes"

# i3 stuff
#alias i3conf="nano $HOME/.config/i3/config"
#alias i3bconf="nano $HOME/.config/i3blocks/config"

# rofi if I need it
alias rofid='cd $HOME/.local/share/rofi/themes'


# mysql aliasing for dockerized mysql access
# you can bake in a -p<password> but this is just for my personal stuff so 
#alias mysql="docker exec -t <docker container id> mysql -uroot"
#alias mysqldump="docker exec <docker container id> mysqldump -uroot"

# Jekyll alias to make sure the env is set, has additional flags for better reading
#alias jekyll="JEKYLL_ENV=production bundle exec jekyll serve --trace --verbose"

# update system
alias wiarae="sudo apt update && sudo apt upgrade"

# history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# completion
autoload -Uz compinit
compinit

#zplug - manage plugins
source /usr/share/zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi
zplug load --verbose

#terminal binds

clear