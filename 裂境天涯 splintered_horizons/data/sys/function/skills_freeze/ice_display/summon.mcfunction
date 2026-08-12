summon minecraft:block_display ~ ~ ~ {Tags:["sys.skills_freeze.display","summon"],block_state: {id: "minecraft:ice"}, brightness: {block: 10, sky: 0}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 1.0f], translation: [-0.5f, 0.0f, -0.5f]}}

playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 1
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 0.75

scoreboard players add #index sys.skills_freeze.id 1
scoreboard players operation @s sys.skills_freeze.id = #index sys.skills_freeze.id

tag @s add sys.skills_freeze.user

execute \
    if entity @s[type=!player,type=!#minecraft:dummy_mob] \
    summon marker run \
function sys:skills_freeze/ice_display/death/setup

execute \
    as @n[sort=arbitrary,tag=sys.skills_freeze.display,tag=summon,distance=..1,type=block_display] at @s run \
function sys:skills_freeze/ice_display/setup

tag @s remove sys.skills_freeze.user