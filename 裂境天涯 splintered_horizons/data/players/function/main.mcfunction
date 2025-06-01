execute if score @s backup matches 1 run function players:backup/use
execute if score @s backtracking matches 1 run function players:backup/backtracking {backup:1}
execute if score @s backtracking matches 2 run function players:backup/backtracking {backup:2}
execute if score @s backtracking matches 3 run function players:backup/backtracking {backup:3}
execute if score @s backtracking matches 4 run function players:backup/backtracking {backup:4}
execute if score @s backtracking matches 5.. run function players:backup/backtracking {backup:5}

function players:elytra_switch/main
function players:detect/main
function players:auto_crafting/main

# 平滑走方塊
execute unless predicate players:detect/input/sneak run attribute @s step_height base set 1
execute if predicate players:detect/input/sneak run attribute @s step_height base reset

scoreboard players set @s[scores={player.ultimate=2..,player.infinite.mana=1..}] player.ultimate 1

function armors:loop

execute if items entity @s weapon.mainhand bow run enchant @s weapons:arrow_detect 1