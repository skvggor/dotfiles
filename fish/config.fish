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

function firefox-nightly
	/usr/bin/firefox-nightly/./firefox
end

function scr
	cmatrix -s -b -r
end

starship init fish | source

pfetch; and scr
