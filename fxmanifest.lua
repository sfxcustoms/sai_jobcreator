fx_version 		'cerulean'
use_fxv2_oal    'yes'
lua54           'yes'
game 			'gta5'

version 		'ver:1.0-sfxcustoms'
author 			'Saitama#5230'
description 	'SFX Customs Originals | Discord: https://discord.gg/5ZrJBrKwpG'

shared_scripts{
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}

dependencies {
    'oxmysql',
    'ox_lib',
    'es_extended'
}

----------------------------------------------------------------------------------------------
        -- DO NOT TOUCH ANYTHING FROM HERE, WHEN YOU DO SUPPORT WILL BE REVOKED --
----------------------------------------------------------------------------------------------
                --   SFX CUSTOMS ORIGINALS - JOB CREATOR SYSTEM    --
                --     DISCORD: https://discord.gg/5ZrJBrKwpG         --
----------------------------------------------------------------------------------------------
