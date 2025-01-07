# @s = all entities

# Player Guide. / 玩家導向

    execute as @s[type=player] at @s run function main:guide/player

execute as @s[type=!player] run function main:duration
execute as @s[type=!#minecraft:dummy_mob] run function effects:main
function weapons:main
function system:portal/loop
function monsters:main
function system:chest/setup/main
function system:chest/main
function items:type/soul_lock/main

execute as @s[type=marker,tag=decorated_pot.marker] run function system:decorated_pot/main