# Path to your oh-my-zsh installation.
export ZSH=/Users/mcachran/.oh-my-zsh
#export PATH="$(brew --prefix josegonzalez/php/php55)/bin:/usr/local/bin:$PATH"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
export PATH='/usr/local/bin/node'
export PATH='/usr/local/bin/npm'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

DEFAULT_USER="mcachran"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z git brew brew-cask git git-extras github lol osx zsh-syntax-highlighting)

# User configuration

export PATH="/Users/mcachran/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# HIGHLIGHTING
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
#else
  # export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# -------
# Aliases
# -------
#alias mvim="/Applications/MacVim.app/contents/MacOS/MacVim"

# `mvim` will now open files in the existing window.
alias mvim='open -a MacVim'

alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop' 

alias brewupdate="brew update && brew upgrade && brew cleanup && brew cask cleanup && npm update -g && gem update"

alias ll="ls -laG"
alias clr="clear" # Clear your terminal screen
alias flush="sudo discoveryutil udnsflushcaches" # Flush DNS (Yosemite)
#alias flush="killall -HUP mDNSResponder" # Flush DNS (Mavericks, Mountain Lion, Lion)
#alias flush="dscacheutil -flushcache" # Flush DNS (Snow Leopard, Leopard)
alias ip="curl icanhazip.com" # Your public IP address
alias ldir="ls -al | grep ^d" # List all directories in current directory in long list format
#alias o="open ." # Open the current directory in Finder
alias ut="uptime" # Computer uptime
alias phpall='for f (*.php~test.php(om)) {php -l $f}'
alias brewupdate="brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup && npm update &&  npm update -g && gem update"
alias publicip="curl ifconfig.me"

# mute the system volume
alias stfu="osascript -e 'set volume output muted true'"
alias vhosts="cd /private/etc/apache2/other/"
# ----------------------
# Functions
# ----------------------
function wpdebug() { tail -f $1/wp-content/debug.log }
function f() { find . -name "$1" }

function extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)tar xjf $1;;
			*.tar.gz)tar xzf $1;;
			*.bz2)bunzip2 $1;;
			*.rar)rar x $1;;
			*.gz)gunzip $1;;
			*.tar)tar xf $1;;
			*.tbz2)tar xjf $1;;
			*.tgz)tar xzf $1;;
			*.zip)unzip $1;;
			*.Z)uncompress $1;;
			*)echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

function grepe() {
	grep -rn --exclude='*.min.*' '$1' *
}

alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 

# ----------------------
# Git Aliases
# ----------------------
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias gls="grep path .gitmodules | sed 's/.*= //'"
alias gsu="git submodule foreach git pull origin master"
alias gcd='cd `git rev-parse --show-toplevel`'
# alias gup='git fetch && git checkout master && git rebase origin/master && git checkout - && git rebase'
# alias git-delete-merged-branches='git branch --merged master | grep -v "\*" | xargs -n 1 git branch -d'


# ----------------------
# Git Functions
# ----------------------
# view modified files in a directory
ls-mod-dir() { git ls-files -m -- "$*" }

# reset modified files in a directory
reset-mod-dir() { git checkout -- `git ls-files -m -- "$*"` }

# Remove untracked files (use caution)
remove-untracked() { rm -rf `git ls-files --other --exclude-standard` }

# Get all files changed b/w commits
gdifflog() { git log --name-only --pretty=oneline --full-index $*..HEAD | grep -vE '^[0-9a-f]{40} ' | sort | uniq }

# Delete a remote branch.. because the syntax is so weird
deleteremote() { git push $1 :$2 }

# Search commits for a string or code
searchcommits() { 
	git log -G "$*" --pretty=format:"%C(yellow)%h %Creset%s %Cgreen(%cr) %Cblue[%cn - %ce]" --decorate 
}

# Reset-checkout.. checks out branch, removes untracked files, and re-inits submodules
checkout-reset() {
	git checkout $1 && remove-untracked && git submodule update --init --recursive
}

# see who has worked on a file
who-worked-on-it() {
	git log --follow $1 | grep "^Author: " | sort | uniq -c
}

#### Now, in your shell you can do
#### git cr <TAB>
#### and get an autocomplete of available branches, just like "git checkout <TAB>"
_git_cr () {
	# you can return anything here for the autocompletion for example all the branches
	__gitcomp_nl "$(__git_refs)"
}

pgrunt() {
	grunt
	rc=$?; if [[ $rc != 0 ]]; then pgrunt; fi
}

alias g-pretty-graph="git log --graph --pretty=format:\"%C(yellow)%h%Creset%C(cyan)%C(bold)%d%Creset %C(cyan)(%cr)%Creset %C(green)%ce%Creset %s\""

# Sanitize text for a branch title, etc.
sanitize_title () { echo "$1" | sed -e 's/[^a-zA-Z0-9 ]//g' | sed -e 's/ /-/g' | tr '[:upper:]' '[:lower:]' }

# connect to lab.
lab () { ssh $1.wdslab.com }

# ssh into VVV Vagrant machine.
alias vssh="z VVV && vagrant ssh"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
