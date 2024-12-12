# Player Guide. / 玩家導向

    execute as @s[type=player] at @s run function main:guide/player

execute as @s[type=!player] run function main:duration
execute as @s[type=!#minecraft:dummy_mob] run function effects:main
function weapons:main

execute as @s[type=marker,tag=decorated_pot.marker] run function system:decorated_pot/main