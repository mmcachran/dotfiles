export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH
export EDITOR=vim
#source "`brew --prefix grc`/etc/grc.bashrc"

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias start_db="sudo /usr/local/mysql/support-files/mysql.server start"
alias start_mysql="sudo /usr/local/mysql/support-files/mysql.server start"

#PS1='\[\033[01;32m\]\u\[\033[01;34m\]::\[\033[01;31m\]\h\[\033[00;38m\]::\[\033[01;34m\]\w\[\033[00;34m\]\[\033[01;38m\]$ \[\033[00m\]'
#PS1='\[\033[01;38m\]\u \[\033[01;38m\]\[\033[01;38m\]\W\[\033[00;38m\]\[\033[01;38m\]$ \[\033[00m\]'

PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

alias clear_chrome_cache="rm -fr ~/Library/Caches/Google/Chrome/Default/*"
alias inet_conn='lsof -P -i -n | cut -f 1 -d " "| uniq | tail -n +2'
alias show_dirs='find * -maxdepth 0 -type d'
alias dirf='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias show_symlinks='find . -lname "*"'
alias chrome="open -a \"Google Chrome\""
alias mergeall='git mergetool -t opendiff'

# copy output of last command to clipboard
alias cl="fc -e -|pbcopy"

# mute the system volume
alias stfu="osascript -e 'set volume output muted true'"

# Get your current public IP
alias ip="curl icanhazip.com"

# Correct small typos
shopt -s cdspell

wiki() { dig +short txt $1.wp.dg.cx; }

extract () {
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

psgrep() {
	if [ ! -z $1 ] ; then
		echo "Grepping for processes matching $1..."
		ps aux | grep $1 | grep -v grep
	else
		echo "!! Need name to grep for"
	fi
}

alias restart_apache="sudo /opt/local/apache2/bin/apachectl restart"
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ll="ls -laG"
alias l.='ls -d .*'
alias blu="cd /www/blu"
alias merch="cd /www/vz_merch_manual/"
alias vig="cd /www/vz_insiders_guide/"
alias insider="cd /www/vz_insiders_guide/"
alias reptablet="cd /www/vz_rep_tablet/"
alias paceco="cd /www/paceco_wp/"
alias vzgg="cd /www/vz_gadgets_gears/"
alias localhost="cd /www/"
alias wip="cd /www/wip/"
alias breg="cd /www/wip/breg/"
alias reptablet="cd /www/vz_rep_tablet"
alias kiosk="cd /www/vz_kiosk/"
alias therecapp="cd /www/vz_recapp/"
alias recapp="cd /www/vz_recapp/"
alias vdms="cd /www/vz_vdms/"
alias eguide="cd /www/vz_eguide_wp/"
alias vzcms="cd /www/verizon_cms/"
alias svnup="svn up"
alias eguide3="cd /www/vz_eguide_3/"
alias slab="cd /www/vz_solutions_lab/"
alias cd..="cd .."
alias celar="clear"
alias cealr="clear"
alias claer="clear"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
