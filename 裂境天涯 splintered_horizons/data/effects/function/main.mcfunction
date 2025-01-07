scoreboard players remove @s[scores={effect.void=1..}] effect.void 1
scoreboard players remove @s[scores={effect.void_immunity=1..}] effect.void_immunity 1
scoreboard players remove @s[scores={effect.dot_immunity=1..}] effect.dot_immunity 1
scoreboard players remove @s[scores={effect.decay=1..}] effect.decay 1
scoreboard players remove @s[scores={effect.decay_delay=1..}] effect.decay_delay 1
scoreboard players remove @s[scores={effect.corruption=1..}] effect.corruption 1
scoreboard players remove @s[scores={effect.corruption_delay=1..}] effect.corruption_delay 1

execute if score @s effect.void matches 2.. unless score @s effect.void_immunity matches 1.. run function effects:void/true
execute if score @s effect.void matches 1 run function effects:void/false

execute if score @s effect.dot_immunity matches 1.. run function effects:dot_immunity/true

execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] run function effects:decay/main
execute if score @s effect.decay_delay matches 1 if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run function effects:decay/true

execute if score @s effect.corruption matches 1.. run function effects:corruption/main
execute if score @s effect.corruption_delay matches 1 if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run function effects:corruption/true