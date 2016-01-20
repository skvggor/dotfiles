# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set fish_greeting ""

# Aliases
if test (uname) = Darwin
	function atom
		open -a /Applications/Atom\ Beta.app/Contents/MacOS/Atom $argv;
	end

        function subl
                open -a /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text
        end

        function chm
                /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $argv;
        end

	function spo
		/Applications/Spotify.app/Contents/MacOS/Spotify &
	end

	function frio
		python /Users/marcos.garcia/Projects/Labs/snow.py
	end

	# Go Lang
	set -x GOPATH /Users/marcos.garcia/Projects/Labs/go
end

function git-ci-fbiz
	git commit --author="Marcos Garcia de Lima <marcos.garcia@fbiz.com.br>"
end

function g
        grunt $argv;
end

