scoreboard players reset #monster.abyssal_soulreaper.fx particle

execute rotated ~ 0 run \
function monsters:chapter_1/abyssal_soulreaper/1/fx

playsound minecraft:block.trial_spawner.ominous_activate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.note_block.basedrum voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~1 ~ 1 0.75

summon minecraft:item_display ~ ~1 ~ {Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Tags:["monsters.abyssal_soulreaper.1.display","summon"],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:halberd/iron_halberd/1"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [-0.65328145f, -0.2705981f, -0.2705981f, 0.65328145f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0000024f, 5.0000014f, 0.9999995f], translation: [0.0f, -1.0f, -2.5f]}}

ride @n[type=item_display,tag=monsters.abyssal_soulreaper.1.display,tag=summon] mount @s
scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 8
tag @n[tag=main.duration.timer,tag=summon,type=marker,distance=..3] remove summon


execute \
    as @a[distance=..8] run \
function monsters:chapter_1/abyssal_soulreaper/effect/bleeding/use