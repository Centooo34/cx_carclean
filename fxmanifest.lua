fx_version 'cerulean'
game 'gta5'
lua54 "yes"

author 'Cento'
description 'Car clean script'

shared_scripts {
    "@es_extended/imports.lua",
    "config.lua"
}

client_scripts {
    '@ox_lib/init.lua',
    'client.lua'
}


dependencies {
    'ox_lib',
    'es_extended'
}
