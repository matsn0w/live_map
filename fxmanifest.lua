fx_version "bodacious"
game "gta5"

author "TGR_Havoc"
description ""
version "3.0.0"

dependency 'webpack'
dependency 'yarn'

client_script "example_client/*.lua"
exports {
    "reverseWeaponHash",
    "reverseVehicleHash",
    "reverseStreetHash",
    "reverseZoneHash",
    "reverseAreaHash"
}

server_scripts {"server/update_check.lua", "dist/livemap.js"}