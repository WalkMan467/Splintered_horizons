# 執行者 : 怪物
$execute \
    as @e[distance=0..,type=!#dummy_mob,tag=dmger] \
    unless score @s entity.dummy_mob matches 1.. run \
damage @s $(values) weapons:type/sword/nightfall_passive_dmg by @p[sort=arbitrary,distance=0..,tag=atker]