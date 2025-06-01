gamemode spectator @a

# 強制看攝像機
spectate 00000079-0000-000c-0000-001500000015
spectate 000000de-0000-000b-0000-001500000015
spectate 00000015-0000-0016-0000-001500000015
spectate 00000016-0000-0016-0000-001500000015

# 蘇菲亞
execute as @n[type=item_display,tag=cutscene.safe_area.0.rainy_night] if score @s cutscene.aj.animation.change matches 1.. run scoreboard players remove @s cutscene.aj.animation.change 1
execute as @n[type=item_display,tag=cutscene.safe_area.0.rainy_night] unless score @s cutscene.aj.animation.change matches 1.. if score @s cutscene.aj.animation.state matches ..2 run function cutscene:safe_area/0/change_animation
execute positioned 758 143 935 as @n[tag=aj.rainy_night.root,type=item_display,distance=..10] at @s if score @s cutscene.aj.animation.state matches 1 run tp @s ~ ~ ~0.025

# 攝像機 1
execute as 00000079-0000-000c-0000-001500000015 at @s facing entity @n[tag=aj.rainy_night.root,type=item_display,distance=..10] eyes run rotate @s ~ ~-10
execute as 00000079-0000-000c-0000-001500000015 at @s facing entity @n[tag=aj.rainy_night.root,type=item_display,distance=..10] eyes run tp @s ~ ~ ~0.1

# 攝像機 2
execute as 000000de-0000-000b-0000-001500000015 at @s unless score @s cutscene.camera.angle.y matches 21.. run rotate @s ~ ~-1
execute as 000000de-0000-000b-0000-001500000015 at @s unless score @s cutscene.camera.angle.y matches 21.. run scoreboard players add @s cutscene.camera.angle.y 1
