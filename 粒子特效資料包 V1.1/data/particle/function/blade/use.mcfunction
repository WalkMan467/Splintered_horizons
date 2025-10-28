summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Tags:["particle.load"],Passengers:[{id:"minecraft:item_display",item_display:"head",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}]}

execute as @n[type=armor_stand,tag=particle.load] run loot replace entity @s armor.chest loot particle:blade/use
execute as @n[type=armor_stand,tag=particle.load] on passengers run loot replace entity @s container.0 loot particle:blade/use

execute store result score @n[type=armor_stand,tag=particle.load] global.main run random value 1..2
execute as @n[type=armor_stand,tag=particle.load] if score @s global.main matches 1 on passengers run rotate @s facing ^10 ^ ^-5
execute as @n[type=armor_stand,tag=particle.load] if score @s global.main matches 1 on passengers run data modify entity @s transformation.left_rotation set value [0.707f,0f,0.707f,0f]
execute as @n[type=armor_stand,tag=particle.load] if score @s global.main matches 2 on passengers run rotate @s facing ^-10 ^ ^-5
execute as @n[type=armor_stand,tag=particle.load] if score @s global.main matches 2 on passengers run data modify entity @s transformation.left_rotation set value [0f,-0.707f,0f,0.707f]
execute as @n[type=armor_stand,tag=particle.load] on passengers store result entity @s Rotation.[1] float 1 run random value -45..45

scoreboard players set @n[type=armor_stand,tag=particle.load] particle 8
tag @n[type=armor_stand,tag=particle.load] remove particle.load

playsound minecraft:entity.player.attack.sweep voice @s ~ ~1 ~ 1 1