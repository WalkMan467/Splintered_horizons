tag @s remove summon

scoreboard players set @s duration 27
scoreboard players operation @s particle.spacetime_collapse.id = @p[sort=arbitrary,tag=spacetime_collapse.user] player.id

ride @s mount @n[tag=spacetime_collapse.user,type=block_display]

scoreboard players display name @s particle.spacetime_collapse.id "Spacetime Collapse Bubble"
scoreboard players display name @s particle.spacetime_collapse.timer "Spacetime Collapse Timer"