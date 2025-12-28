$execute \
    if entity @s[type=player] run \
summon marker ~ ~ ~ {Tags:["cse.status_effect.weakness.data","summon"],data:{cse:{weakness:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}
$execute \
    unless entity @s[type=player] run \
summon marker ~ ~ ~ {Tags:["cse.status_effect.weakness.data","summon","cse.detect.death"],data:{cse:{weakness:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}

scoreboard players operation @n[tag=cse.status_effect.weakness.data,tag=summon,type=marker] cse.status_effects.weakness.id = @s cse.status_effects.weakness.id

execute \
    unless entity @s[type=player] run \
ride @n[tag=cse.status_effect.weakness.data,tag=summon,type=marker,distance=..3,tag=cse.detect.death] mount @s

tag @n[tag=cse.status_effect.weakness.data,tag=summon,type=marker] remove summon