# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rspec="bundle exec rspec"
#alias api="cd ~/Development/authy/authy-api/"
#alias dash="cd ~/Development/authy/authy-dashboard/"
#alias and="cd ~/Development/authy/authy-android/"
#alias api_console="api; bundle exec bin/console"
#alias api_run="api;bundle exec bin/authy-api"
#alias dashboard_console="dash; bundle exec padrino console"
#alias dashboard_run="dash; bundle exec padrino start"
alias e="open /Applications/Emacs.app --args"
alias pip="pip-2.7"
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby zsh-syntax-highlighting yeoman autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/davidtoca/.rvm/gems/ruby-1.9.3-p194/bin:/Users/davidtoca/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/davidtoca/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/davidtoca/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/davidtoca/Development/android-sdk/platform-tools:/Users/davidtoca/Development/android-sdk/tools:/Users/davidtoca/Development/snippets/:/usr/X11/bin:/usr/local/git/bin:/usr/texbin

# MacPorts Installer addition on 2011-12-11_at_14:58:35: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [[ -s "/Users/davidtoca/.rvm/scripts/rvm" ]] ;
 then source "/Users/davidtoca/.rvm/scripts/rvm" ;
 fi
#rvm --default use 1.9.3

#cd ~/Development/Ruby

clear

#fix inside emacs shell by removing zle

#if [[ -n ${INSIDE_EMACS} ]]; then
    # This shell runs inside an Emacs *shell*/*term* buffer.
#    prompt walters
#    unsetopt zle
#fi

#export TERM="xterm-256color"











