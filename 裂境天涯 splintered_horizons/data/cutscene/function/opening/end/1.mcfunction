tag @a remove cutscene.opening

function cutscene:opening/remove_camera

execute in minecraft:overworld run function cutscene:opening/remove_forceload

execute in minecraft:overworld run spawnpoint @a 44 65 10

item replace entity @a armor.head with air 1

stopsound @a record minecraft:bgm.moonlight_sonata
stopsound @a record minecraft:bgm.etude_op_8_no_12

execute as @a[tag=campfire] run function music:chapter_1/reset