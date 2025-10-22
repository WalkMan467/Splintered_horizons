
scoreboard players set system.shooting_contest.timer global.main 1200
execute store result score #system.shooting_contest.target.timer global.main run random value 60..100
function system:shooting_contest/loop
function system:shooting_contest/game_over/detect