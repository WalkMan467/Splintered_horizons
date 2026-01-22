# 執行者 : 怪物
$execute \
    as @e[tag=dmger,distance=0..,type=!#dummy_mob] \
    unless score @s entity.dummy_mob matches 1.. run \
damage @s $(values) weapons:type/sword/grip_of_withering by @e[tag=atker,limit=1,distance=0..,type=!#dummy_mob]