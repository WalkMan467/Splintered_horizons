
# effect

execute facing entity @n[type=marker,tag=owner] feet run \
tp @s ^ ^ ^0.5


execute on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.animation.lock 4

execute on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.disable.elytra_switch 16

execute on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.shift.skill.disable 16

execute on passengers \
    if entity @s[type=player] run \
effect give @s slow_falling 2 0 true

    # Cancel

execute \
    if function weapons:type/drop/hook/point/clear/detect run \
function weapons:type/drop/hook/point/clear/use