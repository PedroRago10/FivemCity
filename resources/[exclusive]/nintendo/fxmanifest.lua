fx_version 'adamant'
game 'gta5'

client_script {  
"@vrp/lib/Utils.lua",
"main/client.lua"
}

ui_page "html/index.html"
files {
    'html/index.html',
    'html/*.js',
    'html/*.css',
    'html/images/*.png',
    'stream/qua_nintendo.ytyp',
    'html/images/games/*.png',
    'html/images/games/*.jpg'
}

lua54 'yes'

escrow_ignore {
    'config.lua',
}

data_file 'DLC_ITYP_REQUEST' 'stream/qua_nintendo.ytyp'
