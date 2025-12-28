
execute \
    if entity @s[type=player] run \
return 0

scoreboard players add @s monster.forest_messenger.user 0


execute \
    if score @s monster.forest_messenger.user matches 1.. run \
return 0

scoreboard players set @s monster.forest_messenger.user 200

tag @s add monster.forest_messenger.cocoon.owner

particle minecraft:ominous_spawning ~ ~1 ~ 0 0 0 1 50
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 20
playsound minecraft:block.respawn_anchor.charge voice @a ~ ~1 ~ 1 2
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 1 5 normal @a

scoreboard players add .global monster.forest_messenger.cocoon.id 1

summon minecraft:item_display ~ ~1 ~ {Tags:["monster.forest_messenger.cocoon.main","summon","monster.forest_messenger.cocoon.display"],interpolation_duration: 1, item: {count: 1, id: "minecraft:spruce_button"}, shadow_strength: 0.0f, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}, view_range: 0.0f}

scoreboard players set @n[tag=monster.forest_messenger.cocoon.main,type=item_display,tag=summon] duration 200
scoreboard players operation @n[tag=monster.forest_messenger.cocoon.main,type=item_display,tag=summon] monster.forest_messenger.cocoon.id = .global monster.forest_messenger.cocoon.id
scoreboard players operation @s monster.forest_messenger.cocoon.id = .global monster.forest_messenger.cocoon.id

summon block_display ^ ^1 ^8 {Glowing:1b,teleport_duration:1,Tags:["monster.forest_messenger.cocoon","summon","monster.forest_messenger.cocoon.display"],Passengers:[{id:"minecraft:block_display",Glowing:1b,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.125f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:azalea"}},{id:"minecraft:block_display",Glowing:1b,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.125f,0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:azalea"}},{id:"minecraft:block_display",Glowing:1b,billboard:"vertical",teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.375f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bush"}},{id:"minecraft:block_display",Glowing:1b,billboard:"vertical",teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.375f,0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bush"}}],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.175f,-0.175f,-0.175f],scale:[0.375f,0.375f,0.375f]},block_state:{Name:"minecraft:raw_gold_block"}}


execute \
    as @n[tag=monster.forest_messenger.cocoon,tag=summon,type=block_display] \
    on passengers run \
scoreboard players set @s duration 200

execute \
    as @n[tag=monster.forest_messenger.cocoon,tag=summon,type=block_display] \
    on passengers run \
scoreboard players operation @s monster.forest_messenger.cocoon.id = .global monster.forest_messenger.cocoon.id

scoreboard players set @n[tag=monster.forest_messenger.cocoon,tag=summon,type=block_display] duration 200
scoreboard players operation @n[tag=monster.forest_messenger.cocoon,tag=summon,type=block_display] monster.forest_messenger.cocoon.id = .global monster.forest_messenger.cocoon.id

tag @n[tag=monster.forest_messenger.cocoon.display,tag=summon,type=block_display] remove summon