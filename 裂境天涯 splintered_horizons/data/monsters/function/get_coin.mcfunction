execute store result score #get.coin.rdm player.coin run random value 10..60
scoreboard players operation @s player.coin += #get.coin.rdm player.coin

execute unless score @s player.actionbar.shop matches 1.. run scoreboard players set @s player.actionbar.shop 20