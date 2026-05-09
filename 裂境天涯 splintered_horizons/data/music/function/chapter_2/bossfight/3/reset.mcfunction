advancement revoke @s only music:chapter_2/bossfight/3/play

execute \
    unless score @s music.chapter2.bossfight.3 matches 1.. run \
return 0

function music:reset
stopsound @s record minecraft:bgm.makai_symphony_endless_storm
scoreboard players reset @s music.chapter2.bossfight.3