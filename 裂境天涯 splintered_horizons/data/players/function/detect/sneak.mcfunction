execute if predicate players:detect/input/sneak run scoreboard players add @s player.detect.sneak 1
execute if predicate players:detect/input/sneak run scoreboard players set @s player.detect.sneak.delay 1

execute if score @s player.detect.sneak matches 1.. if score @s player.detect.sneak.delay matches 1.. run return 0

execute if entity @s[tag=weapon.earthquake_axe.user,tag=weapon.earthquake_axe.finality_tunder] if score @s weapon.earthquake_axe.animation matches 1..30 if score @s player.detect.sneak matches 1..3 run function weapons:type/axe/earthquake_axe/animation/reset

execute if entity @s[tag=!animation] if score @s player.detect.sneak matches 1..3 run function armors:detect/active_skills

scoreboard players reset @s player.detect.sneak
scoreboard players reset @s player.detect.sneak.delay