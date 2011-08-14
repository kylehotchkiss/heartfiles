##
## Kyle Hotchkiss' Bash Configuration
## My philosophy is that bash should be easy and fun
## to use. Seriously. I'm on this thing every day.
##

if [ "$TERM" != "dumb" ]; then
	if [ "$SSH_CONNECTION" ]; then
		export PS1="\[\e[37m\]{ \[\e[0m\]♦  \[\e[1;33m\]\u \[\e[37m\]} \[\e[34m\]\W\[\e[0m\]: "
	else
		export PS1="\[\e[37m\]{ \[\e[0m\]★  \[\e[1;32m\]\u \[\e[37m\]} \[\e[34m\]\W\[\e[0m\]: "
	fi
fi


#
# Functions that ease up everyday tasks.
#

function his() {
	# Credit: http://wuhrr.wordpress.com/2009/10/11/sweeten-bash-history-by-adding-grep/
	if [ -z "$1" ]
	then
		history
	else
		history | grep "$@"
	fi
}

function la() {
	ls -a
}

function ll() {
	ls -al
}
