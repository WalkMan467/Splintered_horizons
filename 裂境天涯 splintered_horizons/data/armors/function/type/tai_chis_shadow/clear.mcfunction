advancement revoke @s only armors:type/tai_chis_shadow/clear

execute unless score @s armor.tai_chis_shadow.effect matches 1.. run return 0
scoreboard players set @s armor.tai_chis_shadow.restore_mana 2
scoreboard players operation @s armor.tai_chis_shadow.restore_mana *= @s armor.tai_chis_shadow.restore_mana_magnification

scoreboard players operation @s player.mana += @s armor.tai_chis_shadow.restore_mana

scoreboard players remove @s[scores={armor.tai_chis_shadow.effect=1..}] armor.tai_chis_shadow.effect 1

title @s title {"text":"\uE003","font":"minecraft:screen"}
title @s times 0 10 10

title @s[scores={armor.tai_chis_shadow.effect=0}] subtitle [{"text":""},{"text":"☯☯☯","color":"#212121"}]
title @s[scores={armor.tai_chis_shadow.effect=1}] subtitle [{"text":""},{"text":"☯","color":"white"},{"text":"☯☯","color":"#212121"}]
title @s[scores={armor.tai_chis_shadow.effect=2}] subtitle [{"text":""},{"text":"☯☯","color":"white"},{"text":"☯","color":"#212121"}]
title @s[scores={armor.tai_chis_shadow.effect=3}] subtitle [{"text":""},{"text":"☯☯☯","color":"white"}]

playsound minecraft:entity.ender_eye.death master @a ~ ~1 ~ 1 0.5
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 40 normal @a
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 normal @a
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 0.75
particle block{block_state:"minecraft:white_stained_glass"} ~ ~0.5 ~ 0.5 1 0.5 1 40 normal @a
particle block{block_state:"minecraft:black_stained_glass"} ~ ~0.5 ~ 0.5 1 0.5 1 40 normal @a

particle dust_color_transition{from_color:[0.000,0.000,0.000],scale:1.5,to_color:[1.000,0.980,0.980]} ~ ~1 ~ 2 2 2 1 80 normal @a
particle dust{color:[0.000,0.000,0.000],scale:2} ~ ~1 ~ 2 2 2 1 20 normal
particle dust{color:[1.000,1.000,1.000],scale:2} ~ ~1 ~ 2 2 2 1 20 normal