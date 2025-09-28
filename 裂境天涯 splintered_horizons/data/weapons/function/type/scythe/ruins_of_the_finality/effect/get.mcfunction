execute unless score @s weapon.ruins_of_the_finality.effect.detect matches 1.. run return 0

scoreboard players add @s weapon.ruins_of_the_finality.effect 0
scoreboard players add @s weapon.ruins_of_the_finality.effect.cd 0

execute if score @s weapon.ruins_of_the_finality.effect.cd matches 1.. run return 0
execute unless score @s weapon.ruins_of_the_finality.effect matches 5.. run scoreboard players add @s weapon.ruins_of_the_finality.effect 1

scoreboard players add @s weapon.ruins_of_the_finality.effect.cd 2

title @s title {"text":"\uE002","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 10 5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.75