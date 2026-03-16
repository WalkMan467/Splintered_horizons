# 執行者 : 怪物
$execute \
    as @e[distance=0..,type=!#dummy_mob,tag=dmger] \
    unless score @s sys.dummy_mob matches 1.. run \
damage @s $(values) weapons:type/sword/echo_rhythm_stronger by @p[sort=arbitrary,distance=0..,tag=atker]