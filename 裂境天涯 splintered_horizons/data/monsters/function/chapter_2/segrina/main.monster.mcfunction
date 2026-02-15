# Cast
function monsters:chapter_2/segrina/cast/cast

# Bossbar

execute \
    store result bossbar minecraft:monsters.segrina max run \
attribute @s max_health get

execute \
    store result bossbar minecraft:monsters.segrina value run \
data get entity @s Health
bossbar set minecraft:monsters.segrina visible true
bossbar set minecraft:monsters.segrina players @a[distance=..60]

scoreboard players set @a[distance=..60] player.disable.tp_book 10

scoreboard players set #boss_area.chapter_2.segrina global.main 0