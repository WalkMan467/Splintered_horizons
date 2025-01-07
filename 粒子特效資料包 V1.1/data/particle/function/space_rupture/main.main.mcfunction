scoreboard players add @s particle.space_rupture 1

# rotated
tp @s ~ ~ ~ ~6 0

# particle
execute if score @s particle.space_rupture matches 12.. run particle minecraft:dust{color:[0.933,0.545,0.302],scale:4} ^ ^ ^7.5 0.3 0 0.3 0 1 force
execute if score @s particle.space_rupture matches 12.. run particle minecraft:dust{color:[0.933,0.545,0.302],scale:4} ^ ^ ^-7.5 0.3 0 0.3 0 1 force
function particle:space_rupture/air_ash/summon
playsound minecraft:block.furnace.fire_crackle master @a

# reset 
execute if score @s particle.space_rupture matches 42.. run kill @s