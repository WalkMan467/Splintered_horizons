# Reset the animation
kill @e[type=creeper,tag=aj.stellar_animation.camera_2]

execute positioned ^ ^ ^-6 run function particle:space_rupture/use
summon creeper ^ ^10 ^ {DeathLootTable:"",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["aj.stellar_animation.camera_2","summon"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.00001}]}
execute as @n[tag=summon,type=creeper] at @s facing entity @n[tag=aj.stellar_animation.root] eyes run rotate @s ~180 0
execute as @n[tag=summon,type=creeper] at @s run tp @s ^ ^ ^12

rotate @n[tag=summon,type=creeper] ~ 60

spectate @n[tag=aj.stellar_animation.camera_2,tag=summon]
title @s title {"text":"\uE002","font":"screen"}
title @s times 20 40 20

tag @n[tag=aj.stellar_animation.camera_2,tag=summon] remove summon