execute as @a at @s if entity @s[tag=player.replace.torch] unless item entity @s weapon.mainhand * run function players:replace/torch/guide

tag @a remove player.replace.torch
schedule function players:replace/torch/main 1t