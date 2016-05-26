#
# ~/.bashrc
#

## Using double hashes for documentation, singles for commenting something out, 4 for pacman use, 3 for entropy use
## This way it's trivial to remove only those hashes that actually need to be removed at any given time.

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Tell me which shell I'm working in
# echo "Working with $SHELL"
# This broke scp, find another way to announce the shell.

## Set the variables I like/need
export TERM=rxvt-256color
export PATH=$PATH:$HOME/bin:/sbin:/usr/sbin:/usr/kerberos/sbin:/bin:/usr/local/sbin

## Set the time format
export TIMEFORMAT=%P

## Setting the prompt_command
current_date()
{
	echo -n '['$(date +%Y.%m.%d" "%R)'] '
	
}
PROMPT_COMMAND=current_date

## set some aliases
alias ggrep='grep -niH --color=always'
alias vgrep='grep -niHv --color=always'
alias tv='tail -v'
alias pftp='/enf/bin/pftptools.sh'
alias ls='ls -F --color=always'
alias ssh='ssh -o ServerAliveInterval=30'
alias zggrep='zgrep -niH --color=always'
alias zless='zless -NJ'

## Use the ipmi view tool
alias ipmi='~/ipmi/IPMIView_V2.11.0_bundleJRE_Linux_x64_20151223/IMPIView20'

## Get the weather!
#TBD

## Launch pidgin and cleanly remove the terminal window.
alias pidgin='pidgin &2>/dev/null & exit'

## stupid ping rules.
alias ping='sudo ping'

## shell options
BASH_OPTS="autocd, cdspell, checkhash, checkjobs, checkwinsize, globstar, histappend, histverify, dirspell, progcomp"

## Set up a few nice functions depending on the distro/os
#system()
#{
#	if [[ $(uname -a | awk '{print $2}') == "Sabayon" ]]
#		then 
#			install_cmds=sabayon
#		elif [[ $(uname -a | awk '{print $2}') == "Gentoo" ]]
#			install_cmds=gentoo
#		elif [[ $(uname -a | awk '{print $2}') == "Arch" ]]
#			install_cmds=arch
#		else
#			echo "There's no current command grouping for this OS or Distro."
#	fi
#}


## Pacman Stuff
####alias install='sudo pacman --color=always -Syy --noconfirm'
####alias upgrade='sudo pacman --color=always -Syyu --noconfirm'
####alias pupgrade='sudo pacman --color=always -Syyup'

## Entropy
alias install='sudo equo i'
alias upgrade='sudo equo up && sudo equo u'
alias systest='sudo equo lt && sudo equo dt'


## Allow me to exit by hitting 'q', getting very used to vim
q()
{
	exit
}

## Change the prompt slightly if root, otherwise, use the same prompt. 
## Plan for color change later on, when colors are better understood in prompting.

if [ $UID -ne 0 ]
	then

		##set the prompt
		PS1='\[\033]0; \u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] | \w  | Jobs: \j | \# \n\!%\[\033[00m\]${NO_COLOUR} '
	else
		##set the prompt (root)
		PS1='\[\033]0; \u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] | \w  | Jobs: \j | \# \n\!#\[\033[00m\]${NO_COLOUR} '

fi 

## Function to reload the shell, since the whole alias thing doesn't seem to work properly

reload(){
	. $HOME/.bashrc
}

## Get the weather/moon forcast
## Will need some refinement to add in more options, but this should get the basic functionality down
weather(){
	local city=$1
	curl wttr.in/$1
}

## Lock the screen. Should also try to set a hotkey binding at some point
lock()
{
	xtrlock -b
}

## Allow me to easily talk to herbstclient like in /etc/xdg/herbstluftwm/autostart
alias hc='herbstclient'