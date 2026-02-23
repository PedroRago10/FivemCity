fx_version "cerulean"
game 'gta5'
lua54 'on'

-- AXLE Works https://discord.gg/ZBBnXMyjKf

files  {
	"data/**/*",
	"audio/*",
	"audio/**/*",
}



data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'


data_file "CLIP_SETS_FILE" 			"data/**/clip_sets.xml" 


data_file 'AUDIO_GAMEDATA' 'audio/trail/trail22_game.dat151'
data_file 'AUDIO_SOUNDDATA' 'audio/trail/trail22_sounds.dat54'
data_file 'AUDIO_WAVEPACK' 'audio/trail/dlc_trail22'
dependency '/assetpacks'