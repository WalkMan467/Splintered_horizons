# 執行者 : 玩家
# tag
tag @s add atker

# calculate
execute store result score #temp atk run attribute @s minecraft:attack_damage get
scoreboard players operation @s atk *= #temp atk

# store & atk
execute store result storage temp values float 0.01 run scoreboard players get @s atk
function dmg_formula:weapons/type/sword/spider/dot/damage with storage temp

# reset
tag @s remove atker
tag @e[type=!#dummy_mob,tag=dmger] remove dmger
scoreboard players reset @s atk