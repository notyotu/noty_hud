fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author 'notyotu'
description 'HUD que muestra el dinero, trajos, id'
version '1.0.0'

client_script 'client.lua'
shared_script 'config.lua'

dependencies {
    'ox_inventory'
}

escrow_igonore {
    'config.lua',
    'client.lua'
}
