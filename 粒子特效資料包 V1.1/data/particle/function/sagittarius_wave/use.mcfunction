
# main 
summon marker ~ ~ ~ {Tags:[fx.sagittarius_wave.main]}

# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.5

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~ ~ 1 1.25

playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 1
playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 1


particle end_rod ~ ~1 ~ 0 0 0 0.5 40 normal @a

particle minecraft:flash{color:[0.000,1.000,0.867,1.000]} ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]

particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:3} ~ ~ ~ 2 2 2 0 40 normal @a

function particle:sagittarius_wave/ground_ash/summon