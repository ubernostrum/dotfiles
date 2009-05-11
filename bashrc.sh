#!/bin/bash

alias ls="ls -G"

# I like confirming destructive operations.
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

# Lots of path stuff because of all the random crap I have installed.
export PATH=/opt/local/bin:/sw/bin:/usr/local/bin:$HOME/bin:$HOME/dev/django/svn/django/branches/releases/1.0.X/django/bin:$PATH
export PYTHONPATH=$HOME/dev/python-local:$PYTHONPATH

# Hooray Emacs!
export EDITOR=emacs

# I like boring command prompts.
export PS1="[\u@\h:\w]$ "

# Hooray virtualenv!
export WORKON_HOME=$HOME/dev/virtualenvs
. $HOME/bin/virtualenvwrapper_bashrc

# Hooray custom completion!
. $HOME/dev/django/svn/django/trunk/extras/django_bash_completion
. $HOME/bin/hg_completion

# Sekrit work stuffs
. $HOME/bin/wol_deploy_config
