scoreboard players add @s player.ultimate 0
execute unless score @s player.ultimate matches ..0 unless score @s player.click.interval matches 1.. run function weapons:ultimate_use_failed
execute unless score @s player.ultimate matches ..0 run return 0

scoreboard players set @s player.click.interval 20

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 10 10 20

scoreboard players set @s player.ultimate 20

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1


function weapons:type/sword/echo_rhythm/damage/ultimate