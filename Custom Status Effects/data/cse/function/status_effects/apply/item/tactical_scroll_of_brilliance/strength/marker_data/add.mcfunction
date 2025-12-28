$execute \
    if entity @s[type=player] run \
summon marker ~ ~ ~ {Tags:["cse.status_effects.tactical_scroll_of_brilliance.strength.data","summon"],data:{cse:{tactical_scroll_of_brilliance:{strength:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}}
$execute \
    unless entity @s[type=player] run \
summon marker ~ ~ ~ {Tags:["cse.status_effects.tactical_scroll_of_brilliance.strength.data","summon","cse.detect.death"],data:{cse:{tactical_scroll_of_brilliance:{strength:{base_value:$(base)f, value:$(value)f, max_value:$(max)f}}}}}

scoreboard players operation @n[tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=summon,type=marker] cse.status_effects.tactical_scroll_of_brilliance.strength.id = @s cse.status_effects.tactical_scroll_of_brilliance.strength.id

execute \
    unless entity @s[type=player] run \
ride @n[tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=summon,type=marker,distance=..3,tag=cse.detect.death] mount @s

tag @n[tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=summon,type=marker] remove summon