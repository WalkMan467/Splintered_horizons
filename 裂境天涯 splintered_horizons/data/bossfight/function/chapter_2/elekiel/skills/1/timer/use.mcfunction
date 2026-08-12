execute \
    unless score $timer monster.elekiel.1.terrain matches 1.. run \
    return run \
function bossfight:chapter_2/elekiel/skills/1/timer/end

scoreboard players remove $timer monster.elekiel.1.terrain 1
scoreboard players add $summon monster.elekiel.1.terrain 1

execute \
    store result bossbar monster.elekiel.2.1.timer value run \
scoreboard players get $timer monster.elekiel.1.terrain

execute \
    if score $summon monster.elekiel.1.terrain matches 5 run \
scoreboard players set #repeat global.main 4

scoreboard players reset #temp.2 global.main

execute \
    store result score #temp.2 global.main \
if entity @e[sort=arbitrary,tag=monster.elekiel.1.mob,type=skeleton]

scoreboard players operation #repeat global.main -= #temp.2 global.main

execute \
    if score $summon monster.elekiel.1.terrain matches 5 \
    unless score $timer monster.elekiel.1.terrain matches 0 run \
function bossfight:chapter_2/elekiel/skills/1/3

execute \
    positioned 912 58 2018 run \
bossbar set monster.elekiel.2.1.timer players @a[sort=arbitrary,distance=..30]

execute \
    positioned 912 58 2018 \
    as @a[sort=arbitrary,distance=..30] at @s run \
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 0.5

schedule function bossfight:chapter_2/elekiel/skills/1/timer/use 1s