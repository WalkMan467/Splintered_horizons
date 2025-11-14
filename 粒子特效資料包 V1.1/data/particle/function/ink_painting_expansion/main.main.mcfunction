scoreboard players add @s particle.ink_painting_expansion 1

# rotated
tp @s ~ ~ ~ ~6 0

# particle
execute if score @s particle.ink_painting_expansion matches 12.. run particle dust_color_transition{from_color:[0.000,0.000,0.000],to_color:[1.0,1.0,1.0],scale:4} ^ ^ ^7.5 0.25 0 0.25 0 0 normal
execute if score @s particle.ink_painting_expansion matches 12.. run particle dust_color_transition{from_color:[0.000,0.000,0.000],to_color:[1.0,1.0,1.0],scale:4} ^ ^ ^-7.5 0.25 0 0.25 0 0 normal
function particle:ink_painting_expansion/air_ash/summon
playsound minecraft:block.furnace.fire_crackle master @a

execute if score @s particle.ink_painting_expansion matches 12.. positioned ^ ^1 ^1.5 run function particle:ink_painting_expansion/ink/summon
execute if score @s particle.ink_painting_expansion matches 12.. positioned ^ ^1 ^-1.5 run function particle:ink_painting_expansion/ink/summon

# reset 
execute if score @s particle.ink_painting_expansion matches 42.. run kill @s