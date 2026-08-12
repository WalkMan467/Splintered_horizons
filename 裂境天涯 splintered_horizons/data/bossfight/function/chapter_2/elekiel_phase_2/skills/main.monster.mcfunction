# Cast
function bossfight:chapter_2/elekiel_phase_2/skills/cast/cast

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

execute if score @s bossfight.attack_module.cd matches 0.. run \
scoreboard players remove @s bossfight.attack_module.cd 1

execute \
    if score @s bossfight.attack_module.cd matches 0 \
    unless score @s monster.elekiel_phase_2.skill.4.casting matches 1.. run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/group/1/use

execute \
    if score @s bossfight.attack_module.cd matches 0 \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 1.. \
    store result score @s bossfight.attack_module.cd run \
random value 160..240

execute \
    if score @s bossfight.attack_module.cd matches 0 run \
scoreboard players reset @s bossfight.attack_module.cd

function bossfight:chapter_2/elekiel_phase_2/attack_module/guide


execute \
    on passengers at @s \
    if entity @s[type=item_display,tag=aj.boss_1.root] rotated \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] run \
rotate @s ~ 0
ride @n[distance=0..,tag=aj.boss_1.root,type=item_display] mount @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton]

function bossfight:chapter_2/elekiel/state/main