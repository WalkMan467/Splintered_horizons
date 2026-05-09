# Cast
function monsters:chapter_2/elekiel_phase_2/cast/cast

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:59}}}}} run \
tp @s ~ 60 ~

# Bossbar

execute \
    store result bossbar minecraft:monsters.elekiel_phase_2 max run \
attribute @s max_health get

execute \
    store result bossbar minecraft:monsters.elekiel_phase_2 value run \
data get entity @s Health
bossbar set minecraft:monsters.elekiel_phase_2 visible true
bossbar set minecraft:monsters.elekiel_phase_2 players @a[distance=..60]

scoreboard players set @a[distance=..60] player.disable.tp_book 10

scoreboard players set @a[distance=..60] player.disable.elytra_switch 10


execute \
    on passengers at @s \
    if entity @s[type=item_display,tag=aj.boss_1.root] rotated \
    as 00000100-0000-0080-0000-008000000005 run \
rotate @s ~ 0
ride @n[distance=0..,tag=aj.boss_1.root,type=item_display] mount 00000100-0000-0080-0000-008000000005

function monsters:chapter_2/elekiel/state/main