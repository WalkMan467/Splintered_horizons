execute if score @s player.detect.drop matches 1.. run function players:detect/drop

execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate players:detect/air run function players:detect/air
execute unless predicate players:detect/air run function players:detect/ground

function players:detect/hurt