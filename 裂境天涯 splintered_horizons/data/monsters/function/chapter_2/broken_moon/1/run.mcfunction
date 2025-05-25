# 發射月光長矛
# @s = BOSS

scoreboard players remove @s[scores={monster.broken_moon.passive=1..}] monster.broken_moon.passive 1
scoreboard players remove @s[scores={monster.broken_moon.1.count=1..}] monster.broken_moon.1.count 1

summon minecraft:block_display ~ ~0.5 ~ {Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],teleport_duration:1,Tags:["monsters.broken_moon.1.throwing_objects","summon"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

rotate @n[tag=monsters.broken_moon.1.throwing_objects,tag=summon] facing entity @p[tag=monsters.broken_moon.1.target]

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 60

tag @n[type=block_display,tag=monsters.broken_moon.1.throwing_objects,tag=summon] remove summon
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon
