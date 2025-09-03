summon minecraft:block_display ^ ^1 ^-0.0001 {Tags:["weapon.ruins_of_the_finality.blade.2","summon"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
rotate @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon] facing entity @s eyes
rotate @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon] ~ 0

data modify entity @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon] teleport_duration set value 20
execute as @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon] at @s run tp @s ^ ^ ^5
execute as @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon] at @s run scoreboard players set @s duration 20

function players:hide/true {duration:10}
spectate @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon]

tag @n[tag=weapon.ruins_of_the_finality.blade.2,type=block_display,tag=summon] remove summon