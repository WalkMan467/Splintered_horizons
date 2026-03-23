# 執行者 : 怪物
$execute \
    as @e[distance=0..,type=!#dummy_mob,tag=dmger] run \
damage @s $(values) weapons:type/scythe/ruins_of_the_finality/damage by @p[sort=arbitrary,distance=0..,tag=atker]