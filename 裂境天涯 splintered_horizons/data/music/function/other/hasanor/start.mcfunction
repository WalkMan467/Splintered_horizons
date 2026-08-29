execute \
    if entity @s[tag=campfire] run \
return 0

stopsound @s record minecraft:bgm.other.hasanor.scott_buckley_eyes_in_the_void
playsound minecraft:bgm.other.hasanor.scott_buckley_eyes_in_the_void record @s ~ ~1 ~ 1 1
scoreboard players set @s music.other.hasanor 265

advancement grant @s only music:other/hasanor/title
advancement grant @s only music:other/hasanor/icon