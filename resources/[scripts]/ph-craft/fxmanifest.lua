fx_version 'cerulean'
game 'gta5'

ui_page 'html/index.html'

shared_script {
	'config.lua',
}

client_scripts {
	"@vrp/lib/utils.lua",
	'client/*.lua',
}

server_scripts {
	"@vrp/lib/utils.lua",
	-- '@mysql-async/lib/MySQL.lua', -- MYSQL-ASYNC
	'@oxmysql/lib/MySQL.lua', -- OXMYSQL
	'server/*.lua',
}

files {
	'html/*.css',
	'html/*.js',
	'html/*.html',
	'html/*.ogg',
	'html/images/*.png',
	'html/images/*.svg',
	'html/itemimages/*.png',
	'html/fonts/*.ttf',
}

lua54 'yes'
