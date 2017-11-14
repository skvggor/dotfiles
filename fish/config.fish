set me (whoami)
set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman

source $fisher_home/fisher.fish

set fish_greeting ""

# Aliases
if test (uname) = Darwin
	function atom
		open -a /Applications/Atom\ Beta.app/Contents/MacOS/Atom $argv;
	end

	function code
		open -a /Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron $argv;
	end

	function subl
		open -a /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text
	end

	function brackets
		open -a /Applications/Brackets.app/Contents/MacOS/Brackets $argv;
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

	function iphone
		open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
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

set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/lib/ruby/gems/2.2.0/bin/bundler" $fish_user_paths
set -g fish_user_paths "/usr/local/lib/ruby/gems/2.2.0/bin/bundle" $fish_user_paths
