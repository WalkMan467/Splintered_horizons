execute if items entity @s weapon.mainhand *[minecraft:item_model="minecraft:sword/grip_of_withering/1"] if score @s player.mana matches 10.. run function weapons:type/sword/grip_of_withering/guide

advancement revoke @s only weapons:type/sword/grip_of_withering/use