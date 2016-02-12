set me (whoami)

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman

source $fisher_home/config.fish

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
		python /Users/$me/Projects/Labs/snow.py
	end

	# Go Lang
	set -x GOPATH /Users/$me/Projects/Labs/go
end

function git-ci-fbiz
	git commit --author="Marcos Garcia de Lima <marcos.garcia@fbiz.com.br>"
end

function g
        grunt $argv;
end

