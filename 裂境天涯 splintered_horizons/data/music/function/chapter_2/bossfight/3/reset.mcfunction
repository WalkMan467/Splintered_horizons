advancement revoke @s only music:chapter_2/bossfight/3/play

function music:reset
stopsound @s record minecraft:bgm.makai_symphony_endless_storm
scoreboard players set @s music.chapter2.bossfight.3 0