
execute \
    as @e[sort=arbitrary,tag=cse.detect.death,type=marker] on vehicle \
    unless data entity @s {DeathTime:0s} at @s run \
function cse:status_effects/apply/clear


execute \
    as @e[sort=arbitrary,tag=cse.status.effect.bleeding,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/bleeding/main

execute \
    as @e[sort=arbitrary,tag=cse.status_effect.armor_shred,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/armor_shred/main

execute \
    as @e[sort=arbitrary,tag=cse.status_effect.weakness,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/weakness/main

execute \
    as @e[sort=arbitrary,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/main


execute \
    as @e[sort=arbitrary,tag=cse.status_effect.tactical_scroll_of_brilliance.armor_enhancement,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/armor_enhancement/main

execute \
    as @e[sort=arbitrary,tag=cse.status_effect.tactical_scroll_of_brilliance.strength,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/strength/main

execute \
    as @e[sort=arbitrary,tag=cse.status_effect.tactical_scroll_of_brilliance.speed,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/speed/main


execute \
    as @e[sort=arbitrary,type=!#minecraft:dummy_mob] at @s run \
function cse:detect/hurt_detect


execute \
    as @a at @s run \
function cse:player