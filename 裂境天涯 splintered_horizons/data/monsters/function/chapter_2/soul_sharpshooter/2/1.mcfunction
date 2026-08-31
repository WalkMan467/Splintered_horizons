# ===================================================
# 魂之神射手 技能2 追魂體設定 / soul sharpshooter skill 2 ghost setup

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/1 ] >>> 魂之神射手 技能2 追魂體設定 / soul sharpshooter skill 2 ghost setup
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/0 ] >>> 魂之神射手 技能2 生成追魂體 / soul sharpshooter skill 2 spawn ghost

# ===================================================

data merge entity @s {Glowing:1b,brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {count: 1, id: "minecraft:skeleton_skull"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.75f, 0.0f]}}

tag @s add chapter_2.soul_sharpshooter.key
tag @s add summon

scoreboard players operation @s monster.emissary_of_the_temporal_rift.id = @n[tag=chapter_2.soul_sharpshooter.key.temp,distance=..5,tag=monsters.emissary_of_the_temporal_rift,type=skeleton] monster.emissary_of_the_temporal_rift.id
scoreboard players display name @s monster.emissary_of_the_temporal_rift.id [{text:"[",color:"white"},{selector:"@n[type=skeleton,tag=chapter_2.soul_sharpshooter.key.temp,distance=..5,tag=monsters.emissary_of_the_temporal_rift]",bold:true,color:"gold"},{text:"]",color:"white"},{text:" "},{text:"Summoned Creature",color:"white"}]

# Interaction
summon interaction ~ ~ ~ {Tags:["monsters.soul_sharpshooter.ghost.act","summon"]}

scoreboard players set @n[sort=arbitrary,distance=..1,tag=monsters.soul_sharpshooter.ghost.act,tag=summon,type=interaction] duration 100

execute \
    as @n[sort=arbitrary,distance=..1,tag=monsters.soul_sharpshooter.ghost.act,tag=summon,type=interaction] at @s run \
ride @s mount @n[sort=arbitrary,distance=..1,tag=chapter_2.soul_sharpshooter.key,tag=summon,type=item_display]

tag @s remove summon