# 執行者 : 玩家
# tag
tag @s add atker

# calculate

function dmg_formula:base_attack
function dmg_formula:weapons/type/sword/grip_of_withering/damage with storage temp

# reset
tag @s remove atker
tag @e[distance=0..,type=!#dummy_mob,tag=dmger] remove dmger
scoreboard players reset @s dmg_formula.atk_percentage