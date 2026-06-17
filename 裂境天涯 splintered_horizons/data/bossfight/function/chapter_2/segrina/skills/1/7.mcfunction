bossbar remove monster.segrina.skill.1.casting

function particle:space_rupture/use

function bossfight:chapter_2/segrina/skills/interface/in

execute \
    as @a[sort=arbitrary,distance=0..,gamemode=!creative,tag=!eliminate,tag=monster.segrina.bossfight.interface] at @s run \
function bossfight:chapter_2/segrina/skills/1/8

execute \
    as @a[sort=arbitrary,distance=0..,gamemode=!creative,tag=!eliminate,tag=monster.segrina.bossfight.interface] at @s run \
function bossfight:chapter_2/segrina/skills/1/9

function bossfight:chapter_2/segrina/skills/interface/out

scoreboard players reset @a monster.segrina.skill.1.ball.light
scoreboard players reset @a monster.segrina.skill.1.ball.dark
scoreboard players reset @a monster.segrina.skill.1.ball