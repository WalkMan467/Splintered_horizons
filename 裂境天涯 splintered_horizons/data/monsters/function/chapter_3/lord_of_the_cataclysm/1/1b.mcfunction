data merge entity @s {block_state: {Name: "minecraft:air"}, brightness: {block: 15, sky: 15}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set @s duration 200

tag @s add chapter_3.lord_of_the_cataclysm.1.1

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp
execute as @a[tag=temp] if score @s entity.dummy_mob matches 1.. run tag @s remove temp

execute facing entity @p[distance=..60,tag=temp] feet rotated ~ 0 run tp @n[tag=chapter_3.lord_of_the_cataclysm.1.1] ~ ~ ~ ~ ~

tag @a remove temp

playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 3 1.5