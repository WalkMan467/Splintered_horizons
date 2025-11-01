$execute if entity @s[type=player] run summon marker ~ ~ ~ {Tags:["cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data","summon"],data:{cse:{slowness:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}
$execute unless entity @s[type=player] run summon marker ~ ~ ~ {Tags:["cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data","summon","cse.detect.death"],data:{cse:{slowness:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}

scoreboard players operation @n[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=summon,type=marker] cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id = @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id
execute unless entity @s[type=player] run ride @n[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=summon,type=marker,distance=..3,tag=cse.detect.death] mount @s

tag @n[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=summon,type=marker] remove summon