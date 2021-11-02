fx_version 'cerulean'
games { 'gta5' }

author 'Redouu'
description 'World-AC scripted by Redouu'
version '0.1'

client_script {
    "config/Config-CL.lua",
    "client/*.lua"
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    "config/Traduction-CF.lua",
    "config/Config-SV.lua",
    "server/*.lua"
}

shared_script "shared/Trigger-Protect.lua"
