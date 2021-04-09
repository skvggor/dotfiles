set fish_greeting ""

function yrb
	yarn run build
end

function yrbs
	yrb; and yarn start
end

function camera
	mplayer tv:// -tv driver=v4l2:width=640:height=480 -vo xv
end

function .
	thunar $argv
end

function ns
	npm start
end

function dev
	npm run dev
end

function nrb
	npm run build
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

# function dockercptheme
#     docker cp /home/marcker/Projects/fbiz/honda-hsf/docroot/themes/custom/blog 8783f644c1be:/var/www/html/web/core/themes
# end

function code
	/usr/bin/./code-insiders $argv
end

# THEME PURE #
#set fish_function_path /home/marcos/.config/fish/functions/theme-pure/functions/ $fish_function_path
#source /home/marcos/.config/fish/functions/theme-pure/conf.d/pure.fish
