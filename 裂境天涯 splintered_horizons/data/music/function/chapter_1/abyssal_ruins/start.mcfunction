execute \
    if entity @s[tag=campfire] run \
return 0

stopsound @s record minecraft:bgm.nico_cartosio_girl_on_an_iceberg
playsound minecraft:bgm.nico_cartosio_girl_on_an_iceberg record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter1.abyssal_ruins 156

advancement grant @s only music:chapter_1/abyssal_ruins/title
advancement grant @s only music:chapter_1/abyssal_ruins/icon