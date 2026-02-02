execute \
    if entity @s[tag=campfire] run \
return 0

stopsound @s record minecraft:bgm.moonlight_sonata
playsound minecraft:bgm.moonlight_sonata record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter1.broken_city 368

advancement grant @s only music:chapter_1/broken_city/title
advancement grant @s only music:chapter_1/broken_city/icon