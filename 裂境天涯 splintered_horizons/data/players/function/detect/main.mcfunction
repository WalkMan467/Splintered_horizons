# 偵測丟棄物品
execute if score @s player.detect.drop matches 1.. run function players:detect/drop

# 偵測在 空中 / 陸地
execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate players:detect/air run function players:detect/air
execute unless predicate players:detect/air run function players:detect/ground

# 獲得符文偵測
execute if function players:detect/get_runics unless entity @s[tag=player.detect.get_runics] run function #players:detect/get_runics
execute if function players:detect/get_runics unless entity @s[tag=player.detect.get_runics] run tag @s add player.detect.get_runics
execute unless function players:detect/get_runics if entity @s[tag=player.detect.get_runics] run tag @s remove player.detect.get_runics

# 偵測受傷
function players:detect/hurt

# 偵測死亡
function players:detect/death