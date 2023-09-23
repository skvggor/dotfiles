set fish_greeting ""

function camera
	mplayer tv:// -tv driver=v4l2:width=1024:height=768 -vo xv
end

function ns
	npm start
end

function ydev
	yarn dev
end

function ygen
	yarn generate
end

function dev
	npm run dev
end

function postman
	/bin/Postman/./Postman
end

function android-studio
	/opt/android-studio/bin/./studio.sh
end

function sshadd
	eval (ssh-agent -c)
end

function code
	/usr/bin/./code-insiders $argv
end

function ls
	lsd $argv
end

function cat
	bat --theme=Dracula $argv
end

function catn
	cat --style="changes" $argv
end

function firefox-nightly
	/usr/bin/firefox-nightly/./firefox
end

function scr
	cmatrix -s -b
end

function how
	github-copilot-cli what-the-shell $argv
end

function ga
	github-copilot-cli git-assist $argv
end

function gha
	github-copilot-cli gh-assist $argv
end

abbr -a \?\? github-copilot-cli what-the-shell
abbr -a git\? github-copilot-cli git-assist
abbr -a gh\? github-copilot-cli gh-assist

atuin init fish | source
starship init fish | source
nitch; and scr
