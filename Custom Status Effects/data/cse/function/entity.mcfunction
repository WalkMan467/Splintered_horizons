execute as @s[type=marker,tag=cse.detect.death] on vehicle unless data entity @s {DeathTime:0s} at @s run function cse:status_effects/apply/clear

execute as @s[tag=cse.status.effect.bleeding] at @s run function cse:status_effects/apply/bleeding/main
execute as @s[tag=cse.status_effect.armor_shred] at @s run function cse:status_effects/apply/armor_shred/main
execute as @s[tag=cse.status_effect.weakness] at @s run function cse:status_effects/apply/weakness/main
execute as @s[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key] at @s run function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/main

execute as @s[tag=cse.status_effect.tactical_scroll_of_brilliance.armor_enhancement] at @s run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/armor_enhancement/main
execute as @s[tag=cse.status_effect.tactical_scroll_of_brilliance.strength] at @s run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/strength/main
execute as @s[tag=cse.status_effect.tactical_scroll_of_brilliance.speed] at @s run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/speed/main

execute as @s[distance=..60,type=!#minecraft:dummy_mob] run function cse:timer

execute as @s[distance=..60,type=!#minecraft:dummy_mob] at @s run function cse:detect/hurt_detect

execute as @s[type=player] at @s run function cse:player