function players:elytra_switch/main
function players:detect/main
function players:auto_crafting/main

# 平滑走方塊
execute unless predicate players:detect/input/sneak run attribute @s step_height base set 1
execute if predicate players:detect/input/sneak run attribute @s step_height base reset

scoreboard players set @s[scores={player.ultimate=2..,player.no_cd=1..}] player.ultimate 1

function armors:loop

execute if items entity @s weapon.mainhand bow run enchant @s weapons:arrow_detect 1