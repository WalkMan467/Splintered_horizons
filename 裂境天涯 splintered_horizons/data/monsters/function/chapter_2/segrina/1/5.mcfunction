scoreboard players add @s monster.segrina.skill.1.dmg 1

execute \
    store result bossbar monster.segrina.skill.1.casting value run \
scoreboard players get @s monster.segrina.skill.1.dmg

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=..60,limit=20,tag=monster.segrina.1.ball.light,type=item] at @s run \
particle dust_color_transition{from_color:[1.000,0.969,0.000],to_color:[1.000,0.980,0.431],scale:1.5} ~ ~ ~ 0.5 0.5 0.5 1 5 force

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=..60,limit=20,tag=monster.segrina.1.ball.dark,type=item] at @s run \
particle dust_color_transition{from_color:[0.180,0.180,0.180],to_color:[0.000,0.000,0.000],scale:1.5} ~ ~ ~ 0.5 0.5 0.5 1 5 force

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=..60,limit=20,tag=monster.segrina.1.ball,type=item] at @s run \
function monsters:chapter_2/segrina/1/6