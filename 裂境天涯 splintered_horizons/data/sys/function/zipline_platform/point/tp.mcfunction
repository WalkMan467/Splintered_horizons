
# effect

execute facing entity @n[tag=owner,distance=0..,type=marker] feet run \
tp @s ^ ^ ^0.5


execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.animation.lock 4

execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.disable.elytra_switch 20

execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.shift.skill.disable 16

execute \
    on passengers \
    if entity @s[type=player] run \
tag @s add sys.fall_immunity


execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.actionbar.zipline_platform.useing 2

    # Cancel

execute \
    if function sys:zipline_platform/point/clear/detect run \
function sys:zipline_platform/point/clear/use