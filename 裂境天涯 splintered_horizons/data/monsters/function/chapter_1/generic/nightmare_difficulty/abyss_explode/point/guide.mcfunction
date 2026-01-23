scoreboard players add @s monster.abyss_explode.timer 1

execute \
    if score @s monster.abyss_explode.timer matches 10 run \
function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/point/0

execute \
    if score @s monster.abyss_explode.timer matches 10.. run \
kill @s