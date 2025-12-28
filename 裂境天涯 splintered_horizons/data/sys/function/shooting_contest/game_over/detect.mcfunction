
# player
title @a[tag=sys.shooting_contest] actionbar [{"text": "- ● "},{"score":{"name":"sys.shooting_contest.timer_s","objective":"global.main"},"color": "gold"},{"text": "s","color": "gold"},{"text": " ● -"}]

execute \
    if score sys.shooting_contest.timer global.main matches 60 \
    as @a[tag=sys.shooting_contest] at @s run \
playsound ui.button.click master @s ~ ~ ~ 1 2

execute \
    if score sys.shooting_contest.timer global.main matches 40 \
    as @a[tag=sys.shooting_contest] at @s run \
playsound ui.button.click master @s ~ ~ ~ 1 2

execute \
    if score sys.shooting_contest.timer global.main matches 20 \
    as @a[tag=sys.shooting_contest] at @s run \
playsound ui.button.click master @s ~ ~ ~ 1 2

# over

execute \
    if score sys.shooting_contest.timer global.main matches 0 \
    positioned 1042 152 -78 \
    in minecraft:overworld run \
function sys:shooting_contest/game_over/over

# loop

execute \
    if score sys.shooting_contest.timer global.main matches 1.. run \
schedule function sys:shooting_contest/game_over/detect 1t