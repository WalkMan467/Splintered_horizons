$execute if entity @s[type=player] run summon marker ~ ~ ~ {Tags:["cse.status_effect.armor_shred.data","summon"],data:{cse:{armor_shred:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}
$execute unless entity @s[type=player] run summon marker ~ ~ ~ {Tags:["cse.status_effect.armor_shred.data","summon","cse.detect.death"],data:{cse:{armor_shred:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}

scoreboard players operation @n[tag=cse.status_effect.armor_shred.data,tag=summon,type=marker] cse.status_effects.armor_shred.id = @s cse.status_effects.armor_shred.id
execute unless entity @s[type=player] run ride @n[tag=cse.status_effect.armor_shred.data,tag=summon,type=marker,distance=..3,tag=cse.detect.death] mount @s

tag @n[tag=cse.status_effect.armor_shred.data,tag=summon,type=marker] remove summon