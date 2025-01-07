scoreboard players add @s particle.void_wave 1

# rotated
tp @s ~ ~ ~ ~6 0

playsound minecraft:block.furnace.fire_crackle master @a

# reset 
execute if score @s particle.void_wave matches 42.. run kill @s