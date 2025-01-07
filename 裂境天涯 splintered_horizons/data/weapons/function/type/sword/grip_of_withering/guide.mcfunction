function weapons:type/sword/grip_of_withering/1

scoreboard players remove @s player.mana 10

scoreboard players set @s weapon.grip_of_withering.level 1
scoreboard players set @s weapon.grip_of_withering.level_timer 300

particle minecraft:sculk_soul ~ ~0.5 ~ 1.5 0 1.5 0.01 40
playsound minecraft:entity.wither.ambient voice @a ~ ~1 ~ 0.5 1