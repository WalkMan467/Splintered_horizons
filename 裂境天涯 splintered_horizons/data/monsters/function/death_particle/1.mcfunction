execute if entity @s[tag=summon] run playsound minecraft:entity.glow_squid.squirt voice @a ~ ~1 ~ 0.5 1
tag @s remove summon


particle trail{color:12379628,target:[0, 600, 0],duration:30000} ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a
particle minecraft:ominous_spawning ~ ~1 ~ 1 1 1 0.75 1 normal @a
particle minecraft:small_gust ~ ~1 ~ 0.5 0.5 0.5 0 1 normal @a
particle minecraft:white_smoke ~ ~1 ~ 0.25 0.5 0.25 0 1 normal @a

# summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],Particle:{type:"block",block_state:"air"},Radius:0}