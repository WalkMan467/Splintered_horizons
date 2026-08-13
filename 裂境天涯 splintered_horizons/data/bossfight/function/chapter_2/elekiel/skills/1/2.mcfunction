schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

# Timer = 15s
scoreboard players set $timer monster.elekiel.1.terrain 15
bossbar add monster.elekiel.2.1.timer {"translate":"monster.elekiel.2.1.timer","fallback": "時空崩塌倒計時"}
bossbar set monster.elekiel.2.1.timer color red
bossbar set monster.elekiel.2.1.timer max 15

execute \
    store result bossbar monster.elekiel.2.1.timer value run \
scoreboard players get $timer monster.elekiel.1.terrain

execute \
    positioned 912 58 2018 run \
bossbar set monster.elekiel.2.1.timer players @a[sort=arbitrary,distance=..30]

scoreboard players set #repeat global.main 4

function bossfight:chapter_2/elekiel/skills/1/3

schedule function bossfight:chapter_2/elekiel/skills/1/timer/use 1s