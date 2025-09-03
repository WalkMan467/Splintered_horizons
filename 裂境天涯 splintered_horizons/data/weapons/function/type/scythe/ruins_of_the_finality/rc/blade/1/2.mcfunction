scoreboard players reset @s weapon.ruins_of_the_finality.blade.timer

# sys
scoreboard players add #id weapon.ruins_of_the_finality.blade.id 1
summon marker ~ ~ ~ {Tags:["weapon.ruins_of_the_finality.blade.1","1","summon"]}
rotate @n[tag=weapon.ruins_of_the_finality.blade.1,tag=summon,type=marker] facing entity @s
rotate @n[tag=weapon.ruins_of_the_finality.blade.1,tag=summon,type=marker] ~ 0

execute rotated ~ 0 run summon minecraft:block_display ^ ^1 ^-8 {teleport_duration:1,Tags:["weapon.ruins_of_the_finality.blade.1","2","summon"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players operation @e[tag=weapon.ruins_of_the_finality.blade.1,tag=summon] weapon.ruins_of_the_finality.blade.id = #id weapon.ruins_of_the_finality.blade.id

scoreboard players operation @s weapon.ruins_of_the_finality.blade.id = #id weapon.ruins_of_the_finality.blade.id

scoreboard players set @e[tag=weapon.ruins_of_the_finality.blade.1,tag=summon,type=block_display] duration 5

# particle
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 2

tag @e[tag=summon,tag=weapon.ruins_of_the_finality.blade.1] remove summon