tag @a remove monster.segrina.skill.1.player

execute \
    positioned 725 107 605 run \
tag @r[dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] add monster.segrina.skill.1.player

execute \
    positioned 725 107 605 \
    as @p[sort=arbitrary,dx=73,dy=26,dz=73,tag=monster.segrina.skill.1.player] run \
function monsters:chapter_2/segrina/1/2

execute \
    positioned 725 107 605 \
    as @p[sort=arbitrary,dx=73,dy=26,dz=73,tag=monster.segrina.skill.1.player] run \
tag @s remove monster.segrina.skill.1.player