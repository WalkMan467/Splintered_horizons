tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"tips.main.nightmare.1","color":"dark_green"}]

scoreboard players set #nightmare main.difficulty 1
scoreboard players set #delay main.trigger 1

title @s title {"translate":"difficulty.nightmare","color":"dark_purple","bold":true}
title @s times 0 20 20
title @s subtitle {"translate":"dialog.main.enabled","color":"dark_green","bold":true}

stopsound @a voice minecraft:entity.ender_dragon.growl
stopsound @a voice minecraft:entity.cat.ambient
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl voice @s ~ ~1 ~ 1 1