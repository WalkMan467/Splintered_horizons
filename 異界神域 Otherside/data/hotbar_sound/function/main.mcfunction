# 偵測換欄位
execute store result score @s hotbar run data get entity @s SelectedItemSlot
execute unless score @s hotbar = @s hotbar_temp run function hotbar_sound:detect
scoreboard players operation @s hotbar_temp = @s hotbar