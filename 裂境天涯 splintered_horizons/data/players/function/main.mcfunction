scoreboard players remove @s[scores={player.die_detect=1..}] player.die_detect 1

execute if score @s backup matches 1 run function players:backup/use
execute if score @s backtracking matches 1 run function players:backup/backtracking {backup:1}
execute if score @s backtracking matches 2 run function players:backup/backtracking {backup:2}
execute if score @s backtracking matches 3 run function players:backup/backtracking {backup:3}
execute if score @s backtracking matches 4 run function players:backup/backtracking {backup:4}
execute if score @s backtracking matches 5.. run function players:backup/backtracking {backup:5}

function armors:loop