tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"tips.main.nightmare.2","color":"dark_red"}]

scoreboard players set #nightmare main.difficulty 0
scoreboard players set #delay main.trigger 1

title @s title {"translate":"difficulty.nightmare","color":"dark_purple","bold":true}
title @s times 0 20 20
title @s subtitle {"translate":"dialog.main.disabled","color":"dark_red","bold":true}


stopsound @a voice minecraft:entity.ender_dragon.growl
stopsound @a voice minecraft:entity.cat.ambient
execute as @a at @s run playsound minecraft:entity.cat.ambient voice @s ~ ~ ~ 1 1