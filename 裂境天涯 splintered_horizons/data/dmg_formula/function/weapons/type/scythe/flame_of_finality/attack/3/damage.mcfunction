# 執行者 : 怪物
$execute \
    as @e[distance=0..,type=!#dummy_mob,tag=dmger] run \
damage @s $(values) weapons:type/scythe/flame_of_finality/attack/3 by @p[sort=arbitrary,distance=0..,tag=atker]