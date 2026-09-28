# 執行者 : boss

execute as @a[distance=..25] at @s run function monsters:stormpromax/2/1
execute if entity @s[tag=stormpm.3] as @a[distance=..50] at @s run function monsters:stormpromax/2/1

particle witch ~ ~ ~ 10 0 10 0 500 force
execute if entity @s[tag=stormpm.3] run particle witch ~ ~ ~ 30 0 30 0 500 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2
playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 1 2

function monsters:storm/cast/end