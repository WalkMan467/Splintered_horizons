scoreboard players set @a weapon.ruins_of_the_finality.effect.count.delay 5

scoreboard players remove @s[scores={weapon.ruins_of_the_finality.effect.count=1..}] weapon.ruins_of_the_finality.effect.count 1

title @s title {"text":"\uE004","font":"screen"}
title @s times 0 6 0

execute if score @s weapon.ruins_of_the_finality.effect.count matches 5 as @e[tag=weapon.ruins_of_the_finality.effect] at @s rotated 0 0 run function weapons:type/scythe/ruins_of_the_finality/effect/explosion
execute if score @s weapon.ruins_of_the_finality.effect.count matches 4 as @e[tag=weapon.ruins_of_the_finality.effect] at @s rotated 90 0 run function weapons:type/scythe/ruins_of_the_finality/effect/explosion
execute if score @s weapon.ruins_of_the_finality.effect.count matches 3 as @e[tag=weapon.ruins_of_the_finality.effect] at @s rotated 180 0 run function weapons:type/scythe/ruins_of_the_finality/effect/explosion
execute if score @s weapon.ruins_of_the_finality.effect.count matches 2 as @e[tag=weapon.ruins_of_the_finality.effect] at @s rotated -90 0 run function weapons:type/scythe/ruins_of_the_finality/effect/explosion
execute if score @s weapon.ruins_of_the_finality.effect.count matches 1 as @e[tag=weapon.ruins_of_the_finality.effect] at @s rotated 0 0 run function weapons:type/scythe/ruins_of_the_finality/effect/explosion
execute if score @s weapon.ruins_of_the_finality.effect.count matches 0 as @e[tag=weapon.ruins_of_the_finality.effect] at @s rotated 90 0 run function weapons:type/scythe/ruins_of_the_finality/effect/explosion