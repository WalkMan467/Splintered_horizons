# 執行者 : slime

# player
execute as @a[distance=..8] at @s run function monsters:stormpromax/3/5b

summon lightning_bolt ~ ~ ~
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0

function weapons:void