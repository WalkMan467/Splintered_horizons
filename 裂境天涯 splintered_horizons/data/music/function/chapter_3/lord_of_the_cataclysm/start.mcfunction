advancement revoke @s only music:chapter_3/lord_of_the_cataclysm/reset

function music:stop
stopsound @s record minecraft:bgm.scott_buckley_fate_and_fortune
playsound minecraft:bgm.scott_buckley_fate_and_fortune record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter3.lord_of_the_cataclysm 94

advancement grant @s only music:chapter_3/lord_of_the_cataclysm/title