scoreboard players reset skill.4 monster.segrina.cd
scoreboard players reset @s monster.segrina.skill.4.casting

tag @s remove chapter_2.segrina.4
tag @s remove chapter_2.segrina.1

execute \
    positioned 762 107 642 run \
effect give @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface,tag=!eliminate] instant_health 1 27 true

# 清除無敵
execute \
    positioned 762 107 642 \
    as @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface] at @s run \
function bossfight:chapter_2/segrina/skills/4/8

# 清除怪物
execute \
    positioned 725 107 605 run \
tp @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton] ~ -255 ~

execute \
    positioned 725 107 605 run \
kill @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton]

scoreboard players set skill.1 monster.segrina.cd 300
scoreboard players set skill.2 monster.segrina.cd 800
scoreboard players set skill.3 monster.segrina.cd 1300