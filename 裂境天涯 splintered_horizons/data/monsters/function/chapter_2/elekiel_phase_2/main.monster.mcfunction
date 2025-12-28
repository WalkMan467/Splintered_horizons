# Cast
function monsters:chapter_2/elekiel_phase_2/cast/cast

# Bossbar

execute store result bossbar minecraft:monsters.elekiel_phase_2 max run \
attribute @s max_health get

execute store result bossbar minecraft:monsters.elekiel_phase_2 value run \
data get entity @s Health
bossbar set minecraft:monsters.elekiel_phase_2 visible true
bossbar set minecraft:monsters.elekiel_phase_2 players @a[distance=..60]

scoreboard players set @a[distance=..60] player.disable.tp_book 10


execute \
    as @a[distance=..60] at @s run \
advancement grant @s only music:chapter_2/bossfight/3/play

execute \
    as @a[distance=60..] at @s run \
advancement grant @s only music:chapter_2/bossfight/3/reset

scoreboard players set @a[distance=..60] player.disable.elytra_switch 10


execute on passengers at @s \
    if entity @s[type=item_display,tag=aj.boss_1.root] rotated \
    as 00000100-0000-0080-0000-008000000005 run \
rotate @s ~ 0
ride @n[tag=aj.boss_1.root,type=item_display] mount 00000100-0000-0080-0000-008000000005