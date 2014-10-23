# Exports
set -x GOPATH /home/xxx/Dropbox/Programming/Go $GOPATH
set -xg PATH /usr/local/go/bin $PATH
set -xg PATH /usr/local/share/scala/bin $PATH
set -xg PATH /home/xxx/Qt/5.3/gcc_64/bin $PATH
set -xg PATH /home/xxx/Elm-Platform/0.13/.cabal-sandbox/bin $PATH
set -xg CHROME_DEVEL_SANDBOX /usr/local/sbin/chrome-devel-sandbox $CHROME_DEVEL_SANDBOX

# Alias
alias sudo="sudo "
alias cabal="/home/xxx/.cabal/bin/cabal"
alias nw="/home/xxx/Copy/Apps/node-webkit-v0.10.2-linux-x64/nw"

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme coffeeandcode

# Base 16 themes
#eval sh $HOME/.config/base16-shell/base16-chalk.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set fish_greeting ""
