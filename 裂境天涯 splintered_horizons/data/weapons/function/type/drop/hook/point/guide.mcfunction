tag @s add owner
scoreboard players operation #this weapon.hook.user.id = @s weapon.hook.user.id
execute as @a if score @s weapon.hook.user.id = #this weapon.hook.user.id at @s run tag @s add user
execute as @e[type=item_display,tag=hook.effect.point_player] if score @s weapon.hook.user.id = #this weapon.hook.user.id run tag @s add user.vehicle

execute unless entity @n[type=item_display,tag=user.vehicle] as @p[tag=user] at @s run function weapons:type/drop/hook/point/summon

scoreboard players set #cancel weapon.hook.user.id 0

execute as @n[type=item_display,tag=user.vehicle] at @s run function weapons:type/drop/hook/point/tp
execute as @n[type=item_display,tag=user.vehicle] at @s run function weapons:type/drop/hook/point/tp

tag @a[tag=user] remove user
tag @n[type=item_display,tag=user.vehicle] remove user.vehicle
tag @s remove owner