fx_version "cerulean"
author "dylansitoo"
version "0.0.2"

game "gta5"

lua54 "yes"

server_scripts {
	"server/**.lua"
}

client_scripts {
	"client/**.lua"
}

shared_scripts {
    '@ox_lib/init.lua',
	'config.lua',
}


