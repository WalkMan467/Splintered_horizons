effect give @a[distance=..7,gamemode=!creative,gamemode=!spectator] blindness 5 0 false

title @a[distance=..7,gamemode=!creative,gamemode=!spectator] title {"text":"\uE000","font":"minecraft:screen"}
title @a[distance=..7,gamemode=!creative,gamemode=!spectator] times 5 5 5
title @a[distance=..7,gamemode=!creative,gamemode=!spectator] subtitle ""

playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.75 2
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1

scoreboard players reset #monster.abyss_crystal.fx particle
function monsters:other/abyss_crystal/1/fx

particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 normal @a

execute as @a[distance=..7,gamemode=!creative,gamemode=!spectator] run damage @s 10 mob_attack by @n[tag=monsters.abyss_crystal,type=zombie]

function monsters:other/abyss_crystal/cast/end