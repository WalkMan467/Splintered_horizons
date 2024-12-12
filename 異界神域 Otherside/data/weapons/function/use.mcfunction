# function weapons:animation

scoreboard players add @s[scores={player.defense.cd=0}] player.defense 1
scoreboard players set @s player.defense.timer 1
execute if score @s player.defense matches 2 run playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 1

advancement revoke @s only weapons:use