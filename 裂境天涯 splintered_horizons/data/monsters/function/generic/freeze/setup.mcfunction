data merge entity @s {block_state: {Name: "minecraft:frosted_ice", Properties: {age: "0"}}, brightness: {block: 5, sky: 5}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.9999998f, 1.0f], translation: [-0.5f, -2.0f, -0.5f]}}
tag @s add monster.freeze.display

summon marker ~ ~ ~ {Tags:["monster.marker","summon"],data:{Death:"freeze"}}
ride @n[tag=monster.marker,tag=summon,type=marker] mount @n[distance=..1,tag=temp]
tag @n[tag=monster.marker,tag=summon,type=marker] remove summon

ride @s mount @n[distance=..1,tag=temp]
scoreboard players operation @s monster.skill.freeze.id = #global monster.skill.freeze.id