# Cast
function monsters:chapter_2/elekiel/cast/cast

# Bossbar

execute store result bossbar minecraft:monsters.elekiel max run \
attribute @s max_health get

execute store result bossbar minecraft:monsters.elekiel value run \
data get entity @s Health
bossbar set minecraft:monsters.elekiel visible true
bossbar set minecraft:monsters.elekiel players @a[distance=..60]

scoreboard players set @a[distance=..60] player.disable.tp_book 10


execute on passengers at @s \
    if entity @s[type=item_display,tag=aj.boss_1.root] rotated \
    as 00000100-0000-0080-0000-008000000001 run \
rotate @s ~ 0
ride @n[tag=aj.boss_1.root,type=item_display] mount 00000100-0000-0080-0000-008000000001



execute \
    if score $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd matches ..0 run \
function monsters:chapter_2/elekiel/3/summon

function monsters:chapter_2/elekiel/state/main