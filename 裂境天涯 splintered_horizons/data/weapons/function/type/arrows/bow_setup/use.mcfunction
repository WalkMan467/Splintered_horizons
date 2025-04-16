execute if items entity @s weapon.offhand bow unless score @s player.bow matches 1.. run item modify entity @s weapon.offhand weapons:type/arrow/bow_setup
execute if items entity @s weapon.offhand bow unless score @s player.bow matches 1.. run scoreboard players set @s player.bow 1

execute if items entity @s weapon.mainhand bow unless score @s player.bow matches 1.. run item modify entity @s weapon.mainhand weapons:type/arrow/bow_setup
execute if items entity @s weapon.mainhand bow unless score @s player.bow matches 1.. run scoreboard players set @s player.bow 1