#!/bin/bash

# I like confirming destructive operations.
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

# Colored output from ls is nice, but the default color choices need
# work for use on a dark/partially transparent background. Directories
# stay blue but get bold, and symbolic links get bold cyan instead of
# magenta.
export CLICOLOR=1
export LSCOLORS="ExGxcxdxbxegedabagacad"

# Lots of path stuff because of all the random crap I have installed.
export PATH=/opt/local/bin:/usr/local/bin:$HOME/bin:$HOME/dev/django/svn/django/trunk/django/bin:$PATH
export PYTHONPATH=$HOME/dev/python-local:$PYTHONPATH

# Hooray Emacs!
export EDITOR=emacs

# Prompt is not as complicated as the format string would
# suggest. This one does:
#
# (time) user@host:dir $
#
# with user/host in green and working directory cyan.
export PS1="(\[\e[0;37m\]\A\[\e[0;37m\]) \[\e[0;32m\]\u@\h\[\e[0;37m\]:\[\e[0;36m\]\w\[\e[0;37m\] \$ "

# Env variables and functions for virtualenvwrapper.
export WORKON_HOME=$HOME/dev/virtualenvs
. $HOME/bin/virtualenvwrapper_bashrc

# Some useful additional completion.
. $HOME/dev/django/svn/django/trunk/extras/django_bash_completion
. $HOME/bin/hg_completion

# Sekrit work stuffs
. $HOME/bin/wol_deploy_config
