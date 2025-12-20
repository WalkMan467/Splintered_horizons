tag @s add temp
execute as @e[sort=arbitrary,tag=!temp,tag=item.tp_book.point,type=item_display] at @s if score @s item.tp_book.player_id = @p[sort=arbitrary,tag=temp] player.id run kill @s

execute rotated ~ 0 run summon item_display ~ ~ ~ {Tags:["item.tp_book.point","item.tp_book.player.point","summon"],Glowing:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,glow_color_override:16711680,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:item_model":"minecraft:eye_of_the_end"}}}
execute as @n[distance=..8,tag=summon,tag=item.tp_book.point,type=item_display] at @s run function item:type/tp_book/point/setup

tag @s remove temp

schedule function item:type/tp_book/main 1t