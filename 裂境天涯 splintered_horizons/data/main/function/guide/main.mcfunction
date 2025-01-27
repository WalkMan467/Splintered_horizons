# @s = all entities

# Player Guide. / 玩家導向

    execute as @s[type=player] at @s run function main:guide/player

execute as @s[type=!player] run function main:duration
execute as @s[type=!#minecraft:dummy_mob] run function effects:main
function weapons:main
function system:portal/loop
function monsters:main
function items:type/soul_lock/main
function system:campfire/interaction/main
function spawner:main