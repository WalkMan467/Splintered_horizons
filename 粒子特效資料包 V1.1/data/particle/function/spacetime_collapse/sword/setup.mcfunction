tag @s remove summon

scoreboard players set @s duration 30
execute \
    on passengers run \
scoreboard players set @s duration 30


execute \
    if entity @n[tag=spacetime_collapse.user,type=block_display] run \
scoreboard players operation @s particle.spacetime_collapse.id = @n[tag=spacetime_collapse.user,type=block_display] particle.spacetime_collapse.id

execute \
    if entity @n[tag=spacetime_collapse.user,type=player] run \
scoreboard players operation @s particle.spacetime_collapse.id = @p[tag=spacetime_collapse.user] player.id

ride @s mount @n[tag=spacetime_collapse.user,type=block_display]

scoreboard players display name @s particle.spacetime_collapse.id "Spacetime Collapse Sword Main"
scoreboard players display name @s particle.spacetime_collapse.timer "Spacetime Collapse Sword Timer"