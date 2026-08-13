playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 1 0.5

tag @s add chapter_2.soul_sharpshooter.key.temp

execute summon item_display rotated ~ 0 run \
function monsters:chapter_2/soul_sharpshooter/2/1
tag @s remove chapter_2.soul_sharpshooter.key.temp

schedule function monsters:chapter_2/soul_sharpshooter/2/key/main 1t