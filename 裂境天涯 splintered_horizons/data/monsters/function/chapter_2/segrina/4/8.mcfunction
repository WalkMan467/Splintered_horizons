execute \
    unless score @s monster.segrina.skill.4.invincible matches 1.. run \
return 0

scoreboard players reset @s monster.segrina.skill.4.invincible
execute \
    as @a run \
function monsters:chapter_2/segrina/4/7

execute \
    as @a \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

execute \
    as @a run \
function monsters:chapter_2/segrina/4/bossbar/remove with storage monster.segrina.skill.4.invincible temp