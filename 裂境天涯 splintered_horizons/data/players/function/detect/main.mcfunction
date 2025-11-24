# Detect discarded items
execute if score @s player.detect.drop matches 1.. run function players:detect/drop

# Detection in the air / on land
execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate players:detect/air run function players:detect/air
execute unless predicate players:detect/air run function players:detect/ground

# Gain Rune Detection
execute if function players:detect/get_runics unless entity @s[tag=player.detect.get_runics] run function #players:detect/get_runics
execute if function players:detect/get_runics unless entity @s[tag=player.detect.get_runics] run tag @s add player.detect.get_runics
execute unless function players:detect/get_runics if entity @s[tag=player.detect.get_runics] run tag @s remove player.detect.get_runics

# Broken Spawner
execute if score @s player.detect.broken_spawner matches 1.. run function players:detect/broken_spawner

# Detecting Sneak
function players:detect/sneak

# Detecting injuries
function players:detect/hurt

# Detecting Death
function players:detect/death