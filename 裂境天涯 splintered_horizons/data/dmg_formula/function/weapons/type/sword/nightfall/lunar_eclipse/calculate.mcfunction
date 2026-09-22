# 執行者 : 玩家
#
# 月蝕引爆是「基礎傷害」，不是真實傷害，所以走自己的 damage type，
# 沒有掛在 #weapons:type/sword/nightfall 底下（那個 tag 整組都被算成真實傷害）。

# tag
tag @s add atker

# calculate

function dmg_formula:base_attack
function dmg_formula:weapons/type/sword/nightfall/lunar_eclipse/damage with storage temp

# reset
tag @s remove atker
tag @e[distance=0..,type=!#dummy_mob,tag=dmger] remove dmger
scoreboard players reset @s dmg_formula.atk_percentage
