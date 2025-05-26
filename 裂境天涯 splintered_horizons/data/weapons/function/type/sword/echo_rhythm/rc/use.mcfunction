scoreboard players add @s player.ultimate 0
execute if score @s player.ultimate matches 1.. run return 0

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 10 10 20

scoreboard players set @s player.ultimate 60

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1


function weapons:type/sword/echo_rhythm/damage/ultimate