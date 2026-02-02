scoreboard players add @s monster.abyss_explode.timer 1

execute \
    if score @s monster.abyss_explode.timer matches 10 run \
function monsters:generic/nightmare_difficulty/abyss_explode/point/0

execute \
    unless score @s monster.abyss_explode.timer matches 10.. run \
return 0

tag @a[distance=..1.25,gamemode=!spectator] add monster.nightmare_difficulty.abyss_explode.poison.target

effect give @a[distance=..1.25,tag=monster.nightmare_difficulty.abyss_explode.poison.target] poison 5 1 false

execute \
    as @a[distance=..1.25,tag=monster.nightmare_difficulty.abyss_explode.poison.target] run \
damage @s 5 magic

tag @a[distance=..1.25,tag=monster.nightmare_difficulty.abyss_explode.poison.target] remove monster.nightmare_difficulty.abyss_explode.poison.target

scoreboard players reset #monster.abyss_explode.fx particle
execute \
    rotated ~ 0 run \
function monsters:generic/nightmare_difficulty/abyss_explode/poison/fx

kill @s

