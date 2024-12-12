scoreboard players remove @s[scores={effect.void=1..}] effect.void 1

execute if score @s effect.void matches 2.. run function effects:void/true

execute if score @s effect.void matches 1 run function effects:void/false