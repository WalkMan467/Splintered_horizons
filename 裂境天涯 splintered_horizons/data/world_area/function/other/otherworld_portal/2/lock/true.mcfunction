execute on target run scoreboard players set @s player.otherworld_key.count 0
execute on target store result score @s player.otherworld_key.count run clear @s *[minecraft:custom_data~{type:"item",item:"otherworld_key"}] 0


execute unless score #world_area.other.otherworld_portal.2.lock global.main matches 1.. run return 0
execute on target if score @s player.otherworld_key.count matches 0 run function world_area:other/otherworld_portal/2/lock/false

execute on target if score @s player.otherworld_key.count matches 0 run scoreboard players set @s player.actionbar.otherworld_portal.2 40
execute on target if score @s player.otherworld_key.count matches 0 run return 0

scoreboard players set #world_area.other.otherworld_portal.2.lock global.main 0

execute on target store result score @s player.otherworld_key.count run clear @s *[minecraft:custom_data~{type:"item",item:"otherworld_key"}] 0
execute on target run scoreboard players remove @s[scores={player.otherworld_key.count=1..}] player.otherworld_key.count 1
execute on target run clear @s *[minecraft:custom_data~{type:"item",item:"otherworld_key"}] 1

execute on target run scoreboard players set @s player.actionbar.otherworld_portal.1 0
execute on target run scoreboard players set @s player.actionbar.otherworld_portal.2 0

playsound minecraft:block.vault.open_shutter voice @a 161.00 92.50 -426.50 1 1

playsound minecraft:block.vault.insert_item voice @a 161.00 92.50 -426.50 1 1.05
playsound minecraft:block.vault.insert_item voice @a 161.00 92.50 -426.50 1 1.05

particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} 161.00 92.50 -426.50 0 0 0 0 1 normal @a
particle minecraft:sonic_boom 161.00 92.50 -426.50 0 0 0 0 1 normal @a

scoreboard players set #world_area.other.otherworld_portal.2_temp global.main 0