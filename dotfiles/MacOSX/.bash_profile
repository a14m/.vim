#enable the terminal colors
export CLICOLOR=1

#the default color scheme is "exfxcxdxbxegedabagacad"
export LSCOLORS=gxfxcxdxbxegedabagacad

#increase the terminal history size
export HISTSIZE=2000

#shell default editor
export EDITOR='vim'

#aliases to easy change the most working directories
alias pws="cd ~/Vagrant/pyhome/www/"
alias rws="cd ~/Vagrant/ruby/www/"
alias ask="cd ~/Vagrant/ruby/www/AskNative/Backend/"
alias gpn="cd ~/Vagrant/ruby/www/gold_price_api/"
alias atl="cd ~/Vagrant/ruby/www/atlas_api/"
alias www="cd ~/Sites/"

#grep alias to enable coloring all the time
alias grep='grep --color=auto'
alias la='ls -a'

#adding local/bin PATH before /bin PATH
export PATH="/usr/local/bin:$PATH"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## Adding the phonegap android locally android sdk
#export PATH=${PATH}:~/Documents/Android/ADT-Bundle/sdk/platform-tools:~/Documents/Android/ADT-Bundle/sdk/tools

##lincolnloop best practice structure
#alias django-best-practice="django-admin.py startproject --template=https://github.com/lincolnloop/django-layout/zipball/master --extension=py,rst,gitignore,example"

alias wget-website="wget --recursive --no-clobber --page-requisites --convert-links --no-parent $@"

export TERM="xterm-256color"

##homebrew auto completetion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

##rbenv config.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

## setting the ulimit for files
ulimit -n 10000
ulimit -u 1024
