# @s = Player

execute \
    if score @s monster.segrina.skill.4.invincible matches ..0 run \
    return run \
function bossfight:chapter_2/segrina/skills/4/5

scoreboard players remove @s monster.segrina.skill.4.invincible 1

particle dust{color:[0.729,0.729,0.729],scale:1.0} ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a

execute \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

function bossfight:chapter_2/segrina/skills/4/bossbar/update with storage monster.segrina.skill.4.invincible temp