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

# set PATH so it includes user's private bin if it exists, and all of it's
# subdirectories also
if [ -d "$HOME/bin" ] ; then
  # find all directories in $HOME/bin, follow symbolic links ignore dot files
  directories=`find -L $HOME/bin/ -type d | egrep -v '/\.'`
  for d in $directories
  do
    # Add the directory to the path if there are any executable files in it
    binaries=`ls -lA $d | egrep '^[rwxs\-]*x[rwxs\-]* ' | egrep -v '\.so(.[0-9]+)*$'`
    if [ -n "$binaries" ]
    then
      PATH="$d:$PATH"
    fi
  done
fi

[[ -s "/home/will/.rvm/scripts/rvm" ]] && source "/home/will/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
