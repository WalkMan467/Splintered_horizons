scoreboard players reset #repeat global.main
scoreboard players reset $timer monster.elekiel.1.terrain
scoreboard players reset $summon monster.elekiel.1.terrain
scoreboard players reset #temp.2 global.main

execute \
    positioned 912 60 2018 \
    as @e[sort=arbitrary,tag=monster.elekiel.1.mob,distance=..30,type=skeleton] at @s run \
function main:duration/kill_2

schedule function bossfight:chapter_2/elekiel/skills/1/terrain/lock 1t
schedule clear bossfight:chapter_2/elekiel/skills/1/timer/use
function bossfight:chapter_2/elekiel/skills/1/timer/end

execute \
    as @a run \
attribute @s safe_fall_distance modifier remove monsters.elekiel.1.kill

tag @a remove monster.elekiel.1.kill
tag @a remove monster.elekiel.1.skip