bossbar remove monster.segrina.skill.1.casting

function particle:space_rupture/use

execute \
    as @a at @s run \
function monsters:chapter_2/segrina/1/8

execute \
    as @a at @s run \
function monsters:chapter_2/segrina/1/9

scoreboard players reset @a monster.segrina.skill.1.ball.light
scoreboard players reset @a monster.segrina.skill.1.ball.dark
scoreboard players reset @a monster.segrina.skill.1.ball