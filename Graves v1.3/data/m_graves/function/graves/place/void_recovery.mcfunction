## Put this entity of a solid block within `#graves.void_recovery_dist` blocks. Set &bool to if this was successful 
execute store result score &bool mp.temp run spreadplayers ~ ~ 0 1 false @s
execute if score &bool mp.temp matches 0 store result score &bool mp.temp run spreadplayers ~ ~ 0 4 false @s
execute if score #graves.void_recovery_dist mp.settings matches 8.. if score &bool mp.temp matches 0 store result score &bool mp.temp run \
    spreadplayers ~ ~ 0 8 false @s
execute if score #graves.void_recovery_dist mp.settings matches 16.. if score &bool mp.temp matches 0 store result score &bool mp.temp run \
    spreadplayers ~ ~ 0 16 false @s
execute if score #graves.void_recovery_dist mp.settings matches 32.. if score &bool mp.temp matches 0 store result score &bool mp.temp run \
    spreadplayers ~ ~ 0 32 false @s
execute if score #graves.void_recovery_dist mp.settings matches 64.. if score &bool mp.temp matches 0 store result score &bool mp.temp run \
    spreadplayers ~ ~ 0 64 false @s
execute if score #graves.void_recovery_dist mp.settings matches 128.. if score &bool mp.temp matches 0 store result score &bool mp.temp run \
    spreadplayers ~ ~ 0 128 false @s
$execute if score &bool mp.temp matches 0 store result score &bool mp.temp run spreadplayers ~ ~ 0 $(void_recovery_dist) false @s



# execute store result score &bool mp.temp run spreadplayers ~ ~ 0 1 false @s
# execute if score &bool mp.temp matches 1 run return 1
# execute if score &bool mp.temp matches 0 store result score &bool mp.temp run spreadplayers ~ ~ 0 4 false @s
# execute if score &bool mp.temp matches 1 run return 1
# execute if score #graves.void_recovery_dist mp.settings matches 8.. store result score &bool mp.temp run spreadplayers ~ ~ 0 8 false @s
# execute if score &bool mp.temp matches 1 run return 1
# execute if score #graves.void_recovery_dist mp.settings matches 16.. store result score &bool mp.temp run spreadplayers ~ ~ 0 16 false @s
# execute if score &bool mp.temp matches 1 run return 1
# execute if score #graves.void_recovery_dist mp.settings matches 32.. store result score &bool mp.temp run spreadplayers ~ ~ 0 32 false @s
# execute if score &bool mp.temp matches 1 run return 1
# execute if score #graves.void_recovery_dist mp.settings matches 64.. store result score &bool mp.temp run spreadplayers ~ ~ 0 64 false @s
# execute if score &bool mp.temp matches 1 run return 1
# execute if score #graves.void_recovery_dist mp.settings matches 128.. store result score &bool mp.temp run spreadplayers ~ ~ 0 128 false @s
# execute if score &bool mp.temp matches 1 run return 1
# $execute store result score &bool mp.temp run spreadplayers ~ ~ 0 $(void_recovery_dist) false @s
# execute if score &bool mp.temp matches 1 run return 1
# return fail
