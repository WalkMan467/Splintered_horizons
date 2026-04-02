execute \
    on vehicle \
    if entity @s[type=!player,type=!#minecraft:dummy_mob] \
    if score @s sys.skills_freeze.id matches -2147483648..2147483647 \
    if data entity @s {DeathTime:0s} run \
return 0

execute \
    on vehicle at @s run \
function sys:skills_freeze/reset

kill @s[tag=sys.skills_freeze.display.death.marker,type=marker]