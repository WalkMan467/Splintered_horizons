tag @s remove summon

scoreboard players add @s particle 10

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

# summon

$execute \
    if data storage particle {data:{create:[{physics:"1"}]}} run \
summon armor_stand ^ ^ ^0.1 {Team:"NoCollisionRule",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["particle.radial_exoansion.ga","particle.radial_exoansion","summon"],attributes:[{id:"minecraft:bounciness",base:0.875},{id:"minecraft:scale",base:0}],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1,components:{item_model:"$(item_model)"}}}],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}

$execute \
    if data storage particle {data:{create:[{physics:"0"}]}} run \
summon armor_stand ^ ^ ^0.1 {Team:"NoCollisionRule",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["particle.radial_exoansion.ga","particle.radial_exoansion","summon"],attributes:[{id:"minecraft:scale",base:0}],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1,components:{item_model:"$(item_model)"}}}],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}

tag @s add temp

execute \
    as @n[sort=arbitrary,distance=..2,tag=particle.radial_exoansion.ga,tag=summon,type=armor_stand] at @s run \
function particle:create/radial_exoansion/setup

tag @s remove temp

# loop

execute \
    rotated ~10 ~ run \
function particle:create/radial_exoansion/summon with storage particle data.create[0]