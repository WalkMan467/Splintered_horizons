# 執行者 : 怪物
$execute \
    as @e[tag=dmger,distance=0..,type=!#dummy_mob] \
    unless score @s entity.dummy_mob matches 1.. run \
damage @s $(values) weapons:type/sword/echo_rhythm_ultimate by @p[sort=arbitrary,distance=0..,tag=atker]