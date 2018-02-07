#!/bin/bash

# I like confirming destructive operations.
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

# See https://hub.github.com/
alias git=hub

# Colored output from ls is nice, but the default color choices need
# work for use on a dark/partially transparent background. Directories
# stay blue but get bold, and symbolic links get bold cyan instead of
# magenta.
export CLICOLOR=1
export LSCOLORS="excxcxdxbxegedabagacad"

# Lots of path stuff because of all the random crap I have installed.
export PATH=$HOME/.pyenv/shims:$HOME/.cargo/bin:/usr/local/bin:/usr/bin:$HOME/bin:$PATH

# Hooray Emacs!
export EDITOR=/usr/local/bin/emacsclient

# Prompt is not as complicated as the format string would
# suggest. This one does:
#
# (time) user@host:dir $
#
# with user/host in green and working directory cyan.
export PS1="(\[\e[0;37m\]\A\[\e[0;37m\]) \[\e[0;32m\]\u@\h\[\e[0;37m\]:\[\e[0;36m\]\w\[\e[0;37m\] \$ "

# Keep history clean.
export HISTCONTROL=ignoreboth:erasedups

# Make GPG work.
export GPG_TTY=$(tty)

# Completion for hg and git.
source /usr/local/git/contrib/completion/git-completion.bash

# Heroku setup.
source $HOME/.herokurc

# AWS setup.
source $HOME/.awsrc

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
