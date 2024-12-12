gamemode spectator @s
summon area_effect_cloud ~ ~1 ~ {Duration:60,Tags:["player.hide.camera"]}
data modify entity @n[tag=player.hide.camera,limit=1,type=area_effect_cloud] Rotation set from entity @s Rotation
scoreboard players operation @n[limit=1,type=area_effect_cloud,tag=player.hide.camera] player.id = @s player.id
tag @n[tag=player.hide.camera,limit=1,type=area_effect_cloud] remove player.hide.camera