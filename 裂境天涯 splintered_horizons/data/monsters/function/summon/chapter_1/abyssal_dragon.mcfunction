execute if score #difficulty global.main matches 0 run return fail

summon phantom ~ ~2 ~ {Silent:1b,PersistenceRequired:1b,Tags:["abyssal_dragon.spawn","abyssal_dragon","abyssal_dragon.main"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.01}]}

scoreboard players add #aj.performance_limit global.main 1

function animated_java:abyssal_dragon/summon {args:{}}

ride @n[tag=aj.abyssal_dragon.spawn,limit=1] mount @n[limit=1,tag=abyssal_dragon.spawn]

tag @n[tag=aj.abyssal_dragon.spawn,limit=1] remove aj.abyssal_dragon.spawn
tag @n[limit=1,tag=abyssal_dragon.spawn] remove abyssal_dragon.spawn