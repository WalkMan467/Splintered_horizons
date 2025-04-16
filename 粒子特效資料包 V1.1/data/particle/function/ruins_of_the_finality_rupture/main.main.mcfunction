scoreboard players add @s particle.ruins_of_the_finality_rupture 1

# rotated
tp @s ~ ~ ~ ~6 0

# particle
execute if score @s particle.ruins_of_the_finality_rupture matches 12.. run particle dust{color:[1.000,0.000,0.000],scale:2.5} ^ ^ ^7.5 0.3 0 0.3 1 0 normal
execute if score @s particle.ruins_of_the_finality_rupture matches 12.. run particle dust{color:[1.000,0.000,0.000],scale:2.5} ^ ^ ^7.5 0.3 0 0.3 1 0 normal
function particle:ruins_of_the_finality_rupture/air_ash/summon
playsound minecraft:block.furnace.fire_crackle master @a

# reset 
execute if score @s particle.ruins_of_the_finality_rupture matches 42.. run kill @s