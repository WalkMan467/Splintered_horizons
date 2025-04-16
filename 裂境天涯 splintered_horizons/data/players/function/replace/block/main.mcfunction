execute as @a at @s if entity @s[tag=player.replace.block] unless items entity @s weapon.mainhand * run function players:replace/block/guide

tag @a remove player.replace.block
schedule function players:replace/block/main 1t