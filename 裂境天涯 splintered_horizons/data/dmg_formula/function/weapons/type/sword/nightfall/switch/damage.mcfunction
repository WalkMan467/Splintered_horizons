# 執行者 : 怪物
$execute \
    as @e[type=!#dummy_mob,tag=dmger] \
    unless score @s entity.dummy_mob matches 1.. run \
damage @s $(values) weapons:type/sword/nightfall_switch_dmg by @e[tag=atker,limit=1]