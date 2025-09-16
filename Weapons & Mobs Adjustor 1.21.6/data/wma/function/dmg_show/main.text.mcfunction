# exe : text
scoreboard players add @s wma.life 1

execute if score @s wma.life matches ..2 at @s run tp @s ~ ~.2 ~
execute if score @s wma.life matches ..5 at @s run tp @s ~ ~.1 ~

execute if score @s wma.life matches 20.. run function wma:void