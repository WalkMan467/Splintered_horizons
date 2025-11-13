tag @s remove summon
scoreboard players remove #particle.technological_force_field main.raycast 1

# Rdm Color
execute if score @s particle.technological_force_field.line.color matches 1 run particle dust_color_transition{from_color:[1.0,0.0,0.0],scale:1.25,to_color:[0.5,0.0,0.5]} ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s particle.technological_force_field.line.color matches 2 run particle dust_color_transition{from_color:[0.5,0.0,0.5],scale:1.25,to_color:[1.0,0.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s particle.technological_force_field.line.color matches 3 run particle dust_color_transition{from_color:[1.0,0.0,1.0],scale:1.25,to_color:[0.25,0.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s particle.technological_force_field.line.color matches 4 run particle dust_color_transition{from_color:[0.25,0.5,0.0],scale:1.25,to_color:[0.5,1.0,0.0]} ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s particle.technological_force_field.line.color matches 5 run particle dust_color_transition{from_color:[0.5,1.0,0.0],scale:1.25,to_color:[1.0,0.0,0.0]} ~ ~ ~ 0 0 0 0 1 force @a

# Custom Color
execute if score @s particle.technological_force_field.line.color matches 6 run particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.000,1.000,0.467],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s particle.technological_force_field.line.color matches 7 run particle dust_color_transition{from_color:[1.000,0.867,0.000],to_color:[1.000,0.867,0.000],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a


# 擊中方塊
execute if score #particle.technological_force_field main.raycast matches 2.. positioned ^ ^ ^0.25 if block ~ ~ ~ #penetrate run function particle:technological_force_field/raycast/detect
execute if score #particle.technological_force_field main.raycast matches 2.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #penetrate run function particle:technological_force_field/raycast/final

# 到達最大距離
execute if score #particle.technological_force_field main.raycast matches 1 positioned ^ ^ ^0.25 run function particle:technological_force_field/raycast/final