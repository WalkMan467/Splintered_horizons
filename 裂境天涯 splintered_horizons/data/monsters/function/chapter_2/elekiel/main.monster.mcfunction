# Cast
function monsters:chapter_2/elekiel/cast/cast

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:59}}}}} run \
tp @s ~ 60 ~

# Bossbar

execute \
    store result bossbar minecraft:monsters.elekiel max run \
attribute @s max_health get

execute \
    store result bossbar minecraft:monsters.elekiel value run \
data get entity @s Health
bossbar set minecraft:monsters.elekiel visible true
bossbar set minecraft:monsters.elekiel players @a[distance=..60]

scoreboard players set @a[distance=..60] player.disable.tp_book 10

execute \
    on passengers at @s \
    if entity @s[type=item_display,tag=aj.boss_1.root,tag=!rotate] rotated \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] run \
rotate @s ~ 0

ride @n[distance=0..,tag=aj.boss_1.root,type=item_display] mount @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton]

execute \
    if entity @s[tag=rotate] \
    rotated ~ 0 run \
rotate @s facing entity @p[distance=..30] feet

execute \
    if score $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd matches ..0 run \
function monsters:chapter_2/elekiel/3/summon

function monsters:chapter_2/elekiel/state/main