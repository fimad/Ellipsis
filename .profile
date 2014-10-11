# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#export MPD_HOST=multivac.wc
#export HTML_HUD="$HOME/bin/HtmlHud"

export GRADLE_HOME="$HOME/Code/gradle/gradle-1.11"

# set PATH so it includes user's private bin if it exists, and all of it's
# subdirectories also
if [ -d "$HOME/bin" ] ; then
    BIN_DIRS=("$HOME/bin/" "$HOME/Code/android/sdk/")
    # find all directories in $HOME/bin, follow symbolic links ignore dot files
    directories=`find -L $BIN_DIRS -maxdepth 3 -type d | egrep -v '/\.'`
    for d in $directories
    do
        #Make sure the thing we are getting is a path, if it isn't then there
        #was probably a space, in which case we also probably don't care :P
        if [ -d "$d" ]; then
            # Add the directory to the path if there are any executable files.
            binaries=`ls -lA "$d/" | \
              egrep '^[rwxs\-]*x[rwxs\-]* ' | \
              egrep -v '\.so(.[2-9]+)*$'`
            if [ -n "$binaries" ]; then
              PATH="$d:$PATH"
            fi
        fi
    done
fi
PATH="$HOME/.cabal/bin:$GRADLE_HOME/bin:$PATH"

#[[ -s "/home/will/.rvm/scripts/rvm" ]] && source "/home/will/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
