summon minecraft:item_display ~ ~-1 ~ {Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Tags:["monsters.abyssal_soulreaper.2.display","summon"],brightness: {block: 15, sky: 15}, interpolation_duration: 2, item: {components: {"minecraft:item_model": "minecraft:halberd/iron_halberd/1"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 2, transformation: {left_rotation: [0.00806227f, 0.0033395009f, -0.3826689f, 0.9238444f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.000001f, 3.0f, 0.9999988f], translation: [0.0f, 0.0f, 0.0f]}}

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal @a

execute as @e[tag=monsters.abyssal_soulreaper.2.display,type=item_display,tag=summon] at @s run tp @s ~ ~2 ~ ~ ~

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 8
tag @n[tag=main.duration.timer,tag=summon,type=marker,distance=..3] remove summon
tag @n[tag=monsters.abyssal_soulreaper.2.display,tag=summon,type=item_display,distance=..3] remove summon