#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#. /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh

#
#PANEL SCRIPTS
#
export PATH=$PATH:/home/barchl/.config/bspwm/panel
export PANEL_FIFO=/tmp/panel-fifo

#For Breakout!
export CLASSPATH=/usr/local/lib/spl.jar

alias makeC="gcc -Wall -Werror -std=c99"
alias wifi="sudo wifi-menu -o"
alias tmux="tmux -2"
