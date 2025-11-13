advancement revoke @s only music:chapter_2/bossfight/3/reset

function music:stop
stopsound @s record minecraft:bgm.makai_symphony_endless_storm
playsound minecraft:bgm.makai_symphony_endless_storm record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter2.bossfight.3 140

advancement grant @s only music:chapter_2/bossfight/3/title
advancement grant @s only music:chapter_2/bossfight/2/icon