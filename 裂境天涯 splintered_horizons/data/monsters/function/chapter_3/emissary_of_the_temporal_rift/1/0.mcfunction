playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 1 0.5

tag @s add chapter_3.emissary_of_the_temporal_rift.key.temp

execute summon item_display rotated ~ 0 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/1
tag @s remove chapter_3.emissary_of_the_temporal_rift.key.temp

schedule function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/main 1t