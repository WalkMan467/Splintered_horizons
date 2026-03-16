execute \
    as @a at @s \
    unless score @s player.actionbar.zipline_platform.useing matches 1.. \
    if entity @e[sort=arbitrary,distance=..5,tag=sys.zipline_platform.act,type=interaction] run \
scoreboard players set @s player.actionbar.zipline_platform 2

execute \
    at @a \
    as @e[sort=arbitrary,distance=..10,tag=sys.zipline_platform.act,type=interaction] at @s \
    if data entity @s interaction.timestamp run \
function sys:zipline_platform/interacted/use

schedule function sys:zipline_platform/interacted/main 1t