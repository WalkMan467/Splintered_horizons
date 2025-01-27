execute unless score @s weapon.ruins_of_the_end.effect matches 1.. run return fail
scoreboard players remove @s weapon.ruins_of_the_end.effect 1
function animated_java:crack/summon {args:{}}

execute positioned ^ ^0.5 ^2.5 rotated ~ 0 as @e[distance=..1.75,type=!player,type=!#minecraft:dummy_mob] run function weapons:type/sickle/ruins_of_the_end/rc/damage
execute positioned ^ ^0.5 ^5 rotated ~ 0 as @e[distance=..1.75,type=!player,type=!#minecraft:dummy_mob] run function weapons:type/sickle/ruins_of_the_end/rc/damage

playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 2
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1.5

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.75

execute rotated ~ 0 run particle minecraft:explosion_emitter ^ ^ ^5 0 0 0 0 1 normal @a