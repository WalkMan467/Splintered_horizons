# 碰到邊界牆 ;回朔玩家位置

tag @s add link

execute as @e[tag=player.backup.pos,type=area_effect_cloud] at @s if score @s player.id = @a[tag=link,limit=1] player.id run tag @s add link

execute as @p[tag=link] at @n[tag=link,type=area_effect_cloud,tag=player.backup.pos] run tp @s ~ ~ ~


execute unless entity @n[tag=link,type=area_effect_cloud,tag=player.backup.pos] if dimension minecraft:overworld in minecraft:overworld run tp @s 38 64 11
execute unless entity @n[tag=link,type=area_effect_cloud,tag=player.backup.pos] if dimension world_area:main/safe_zone in world_area:main/safe_zone run tp @s 0 60 -2

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

tellraw @s [{"translate": "world_area.main.boundary","color": "dark_green"}]

tag @p[tag=link] remove link
tag @n[tag=link,type=area_effect_cloud,tag=player.backup.pos] remove link