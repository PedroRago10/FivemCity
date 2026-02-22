fx_version 'cerulean'
games { 'gta5' }

author 'Equipe 011RP'
description '011RP Music Player'
version '1.0.0'

ui_page 'web/index.html'

shared_scripts {
    'shared/config.lua',
    'config/dj_stations.lua'
}

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    '@vrp/lib/utils.lua',
    '@oxmysql/lib/MySQL.lua',
    'server.lua',

}

files {
    'web/index.html',
    'web/styles.css',
    'web/script.js',
    'web/mini-player.js',
    'web/drag.js',
    'web/drag-functionality.js',
    'web/assets/**/*',
    'stream/rojo_jblboombox.ydr',
    'stream/rojo_jblboombox.ytd',
    'stream/rojo_jblboombox.ycd',
    'stream/rojo_jblboombox.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/rojo_jblboombox.ytyp'
dependency 'oxmysql'
