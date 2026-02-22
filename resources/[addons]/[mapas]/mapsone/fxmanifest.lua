--shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"


fx_version "cerulean"
game "gta5"

this_is_a_map "yes"

files {
	"stream/*",
	"interiorproxies.meta",
}

client_script 'cl_bobcat.lua'

data_file 'DLC_ITYP_REQUEST' 'stream/prop_car_airbag.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ch_prop_ch_arcade_drones.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ch_prop_ch_casino_drones.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_prop_payment_terminal.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/loq_atm.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/clamp.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/baspel_wheelclamp_pack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/fractal_food_can.ytyp'
data_file "DLC_ITYP_REQUEST" "stream/prop_speed_radar.ytyp"
data_file "INTERIOR_PROXY_ORDER_FILE" "interiorproxies.meta"
data_file "DLC_ITYP_REQUEST" "stream/Props/props.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/Sprays/sprays.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/Badges/v_badges.ytyp"   
data_file "DLC_ITYP_REQUEST" "stream/Badges/denis3d_policebadge.ytyp"   
           