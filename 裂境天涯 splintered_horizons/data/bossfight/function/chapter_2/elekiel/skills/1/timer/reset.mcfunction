scoreboard players reset $timer monster.elekiel.1.terrain
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/lock 1t

bossbar remove monster.elekiel.2.1.timer


execute \
    positioned 912 60 2018 \
    as @e[sort=arbitrary,tag=monster.elekiel.1.mob,distance=..30,type=skeleton] at @s run \
function main:duration/kill_2

execute \
    positioned 912 58 2018 \
    as @a[sort=arbitrary,distance=..30] at @s \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:50}},flags:{is_on_ground:1b}}} \
    if block ~ ~-1 ~ black_concrete run \
tag @s add temp

execute \
    positioned 912 58 2018 run \
tag @a[sort=arbitrary,distance=..30,gamemode=spectator,tag=!animation] remove temp

execute \
    positioned 912 58 2018 run \
tag @a[sort=arbitrary,distance=..30,tag=chapter_2.elekiel.lose] remove temp

execute \
    positioned 912 58 2018 \
    as @a[sort=arbitrary,distance=..30,tag=temp] at @s run \
tag @s add forced_interrupt_animation

execute \
    positioned 912 58 2018 \
    as @a[sort=arbitrary,distance=..30,tag=temp] at @s run \
function players:stop_animation

execute \
    positioned 912 58 2018 run \
kill @a[sort=arbitrary,gamemode=!creative,distance=..30,tag=temp,tag=!monster.elekiel.1.skip]

tag @a[tag=temp] remove temp
tag @a remove monster.elekiel.1.skip
tag @a remove monster.elekiel.1.kill