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
        function subl
                open -a /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text
        end

        function chm
                /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $argv;
        end
end

function g
	grunt $argv;
end
