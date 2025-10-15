execute as @s[type=marker,tag=cse.detect.death] on vehicle unless data entity @s {DeathTime:0s} at @s run function cse:status_effects/apply/clear

execute as @s[tag=cse.status.effect.bleeding] at @s run function cse:status_effects/apply/bleeding/main
execute as @s[tag=cse.status_effect.armor_shred] at @s run function cse:status_effects/apply/armor_shred/main
execute as @s[tag=cse.status_effect.weakness] at @s run function cse:status_effects/apply/weakness/main

execute as @s[type=player] at @s run function cse:player