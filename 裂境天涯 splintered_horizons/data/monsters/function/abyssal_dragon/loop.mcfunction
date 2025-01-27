# Rotate
execute on vehicle if entity @s[tag=abyssal_dragon.main] run effect give @s invisibility infinite 255 true
execute at @s rotated as @n[tag=abyssal_dragon.main,limit=1] run rotate @s ~ 0

# Death
execute if score #difficulty global.main matches 0 run function animated_java:abyssal_dragon/remove/this

execute if score #difficulty global.main matches 0 run scoreboard players set #aj.performance_limit global.main 0

execute on vehicle if entity @s[tag=abyssal_dragon.main] unless data entity @s {DeathTime:0s} on passengers run function monsters:abyssal_dragon/death