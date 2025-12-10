scoreboard players add @s particle.sagittarius_wave 1

# rotated
tp @s ~ ~ ~ ~6 0

# particle
execute if score @s particle.sagittarius_wave matches 12.. run particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:1.5} ^ ^0.3 ^7.5 0.3 0 0.3 0 1 normal
execute if score @s particle.sagittarius_wave matches 12.. run particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:1.5} ^ ^0.3 ^-7.5 0.3 0 0.3 0 1 normal

playsound minecraft:block.furnace.fire_crackle master @a

execute if score @s particle.sagittarius_wave matches 1.. positioned ^ ^1 ^1.5 run function particle:sagittarius_wave/fragments/summon
execute if score @s particle.sagittarius_wave matches 1.. positioned ^ ^1 ^-1.5 run function particle:sagittarius_wave/fragments/summon

# reset 
execute if score @s particle.sagittarius_wave matches 22.. run kill @s