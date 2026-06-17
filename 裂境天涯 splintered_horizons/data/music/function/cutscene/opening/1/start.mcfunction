execute \
    if entity @s[tag=campfire] run \
return 0

stopsound @s record minecraft:bgm.whitesand_my_spirit_is_free
playsound minecraft:bgm.whitesand_my_spirit_is_free record @s ~ ~1 ~ 1 1
scoreboard players set @s music.cutscene.opening.1 166

advancement grant @s only music:chapter_1/abyssal_ruins/title
advancement grant @s only music:chapter_1/abyssal_ruins/icon