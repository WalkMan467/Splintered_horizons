title @a[sort=arbitrary,distance=..60] title {"translate":"monsters.segrina.3","fallback": "技能3【拘魂之陣】"}
title @a[sort=arbitrary,distance=..60] times 20 20 20

tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.temp

tp @s ~ 107 ~

data modify entity @s NoAI set value 1b
scoreboard players set #disable monster.segrina.state 1
function bossfight:chapter_2/segrina/skills/state/run/use

execute \
    as @a[sort=arbitrary,distance=..60] at @s run \
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 1

execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73] at @s run \
function bossfight:chapter_2/segrina/skills/3/death_tips