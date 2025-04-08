fx_version 'cerulean'
game 'gta5'
lua54 "yes"

author 'Cento'
description 'Car clean script'

shared_scripts {
    'config.lua',
    "@es_extended/imports.lua",
}

client_scripts {
    '@ox_lib/init.lua',
    'client.lua'
}


dependencies {
    'ox_lib',
    'es_extended'
}
