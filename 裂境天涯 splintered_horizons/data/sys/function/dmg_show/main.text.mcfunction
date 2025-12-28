# exe : text
scoreboard players add @s sys.dmg_show.life 1


execute \
    if score @s sys.dmg_show.life matches ..2 at @s run \
tp @s ~ ~.2 ~

execute \
    if score @s sys.dmg_show.life matches ..5 at @s run \
tp @s ~ ~.1 ~


execute \
    if score @s sys.dmg_show.life matches 20.. run \
function sys:dmg_show/void