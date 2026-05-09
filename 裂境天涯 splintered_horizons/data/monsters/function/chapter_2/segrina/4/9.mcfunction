execute \
    as @a at @s \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

execute \
    as @a run \
function monsters:chapter_2/segrina/4/bossbar/update with storage monster.segrina.skill.4.invincible temp