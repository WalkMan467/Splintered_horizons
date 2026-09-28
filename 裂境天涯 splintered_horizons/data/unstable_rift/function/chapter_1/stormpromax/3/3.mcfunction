# 執行者 : player

# self
tag @s remove stormpm.3.2
attribute @s generic.gravity base set 0.08
effect give @s slow_falling 5 0 true

summon lightning_bolt ~ ~ ~
damage @s 999 mob_attack by @n[tag=stormpromax]

title @s times 0 40 20
title @s title [{"text":"☠","color":"red"}]
playsound minecraft:item.goat_horn.sound.4 master @a ~ ~ ~ 1 0
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 0

execute as @n[tag=stormpromax] at @s run function monsters:stormpromax/3/4