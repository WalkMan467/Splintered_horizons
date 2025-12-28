
execute \
    as @e[type=text_display,tag=monsters.elekiel.2.vampire_flower.timer,tag=monsters.elekiel.2.vampire_flower.state.1] at @s \
    if score @s monster.elekiel.2.timer matches 0 \
    as @a run \
function monsters:chapter_2/elekiel/2/vampire_flower/target

execute \
    as @e[type=text_display,tag=monsters.elekiel.2.vampire_flower.timer,tag=monsters.elekiel.2.vampire_flower.state.1] at @s \
    if score @s monster.elekiel.2.timer matches 0 run \
function monsters:chapter_2/elekiel/2/vampire_flower/flower


execute \
    as @a[tag=!monsters.elekiel.2.vampire_flower.target] run \
attribute @s max_health modifier remove monsters.elekiel.2.vampire_flower.health


execute \
    unless entity @p[tag=monsters.elekiel.2.vampire_flower.target] run \
return 0

execute \
    as @a[tag=monsters.elekiel.2.vampire_flower.target,tag=!chapter_2.elekiel.lose] at @s run \
function monsters:chapter_2/elekiel/2/vampire_flower/run