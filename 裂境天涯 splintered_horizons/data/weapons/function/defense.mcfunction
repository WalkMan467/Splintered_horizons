playsound minecraft:block.anvil.land voice @a ~ ~1 ~ 1 1

execute if score @s player.defense_point < @s player.defense_point.max run scoreboard players add @s player.defense_point 1