
# main 
summon marker ~ ~ ~ {Tags:[fx.sound_wave.main]}

# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3 0.5
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 3 1


particle minecraft:flash ~ ~1 ~ 1 1 1 1 5
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 100
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 100
function particle:sound_wave/ground_ash/summon