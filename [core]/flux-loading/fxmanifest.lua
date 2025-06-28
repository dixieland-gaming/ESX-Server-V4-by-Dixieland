fx_version 'cerulean'
game 'gta5'

author 'Flux Development'
description 'Modern Loading Screen with Interactive Elements'
version '1.0.0'

loadscreen 'index.html'

files {
    'index.html',
    'style.css',
    'script.js',
    'audio/loading.mp3'
}

loadscreen_manual_shutdown 'yes'

client_script 'client.lua' 