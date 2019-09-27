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

function nrb
	npm run build
end

function postman
	/bin/Postman/./Postman
end
