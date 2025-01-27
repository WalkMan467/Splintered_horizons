playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~ ~ 3 0.75
playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 3 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a

execute store result storage player x float 1 run data get entity @p[tag=weapon.ruins_of_the_end.used] Pos[0]
execute store result storage player y float 1 run data get entity @p[tag=weapon.ruins_of_the_end.used] Pos[1]
execute store result storage player z float 1 run data get entity @p[tag=weapon.ruins_of_the_end.used] Pos[2]

scoreboard players set @a[tag=weapon.ruins_of_the_end.used] weapon.ruins_of_the_end.effect 1

function weapons:type/sickle/ruins_of_the_end/particle with storage player

data remove storage player x
data remove storage player y
data remove storage player z

scoreboard players set @n[tag=weapon.ruins_of_the_end.target,limit=1,distance=..1.5] effect.void 2
effect clear @n[tag=weapon.ruins_of_the_end.target,limit=1,distance=..1.5] glowing
effect clear @n[tag=weapon.ruins_of_the_end.target,limit=1,distance=..1.5] invisibility

execute as @e[type=!player,distance=..3] run damage @s 8 weapons:bypasses_cooldown by @p[tag=weapon.ruins_of_the_end.used]

title @p[tag=weapon.ruins_of_the_end.used] title {"text": "\uE002","font": "minecraft:screen"}
title @p[tag=weapon.ruins_of_the_end.used] subtitle ""
title @p[tag=weapon.ruins_of_the_end.used] times 10 100 10

execute as @p[tag=weapon.ruins_of_the_end.used] run function weapons:type/sickle/ruins_of_the_end/effect

tag @a remove weapon.ruins_of_the_end.used