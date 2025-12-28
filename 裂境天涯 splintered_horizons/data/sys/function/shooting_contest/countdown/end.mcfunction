
scoreboard players set sys.shooting_contest.timer global.main 1200

execute \
    store result score #sys.shooting_contest.target.timer global.main run \
random value 60..100
function sys:shooting_contest/loop
function sys:shooting_contest/game_over/detect