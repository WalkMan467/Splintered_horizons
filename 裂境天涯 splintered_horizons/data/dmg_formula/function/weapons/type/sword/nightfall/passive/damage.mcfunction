# 執行者 : 怪物
$execute \
    as @e[type=!#dummy_mob,tag=dmger] \
    unless score @s entity.dummy_mob matches 1.. run \
damage @s $(values) minecraft:player_attack by @e[tag=atker,limit=1]