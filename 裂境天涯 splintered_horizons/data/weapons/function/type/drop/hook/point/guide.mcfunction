
tag @s add owner
scoreboard players operation #this weapon.hook.user.id = @s weapon.hook.user.id
execute as @a if score @s weapon.hook.user.id = #this weapon.hook.user.id at @s run tag @s add user

scoreboard players set #cancel weapon.hook.user.id 0
execute as @p[tag=user] at @s facing entity @n[type=marker,tag=owner] feet run function weapons:type/drop/hook/point/player
execute at @s if function weapons:type/drop/hook/point/clear/detect run function weapons:type/drop/hook/point/clear/use

tag @a[tag=user] remove user
tag @s remove owner