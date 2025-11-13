
# main 
summon marker ~ ~ ~ {Tags:[fx.technological_force_wave.main]}

# particle

particle minecraft:end_rod ~ ~ ~ 0 0 0 1 50 normal @a

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 1 1
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 1 1

function particle:technological_force_wave/ground_ash/summon
function particle:technological_force_wave/ground_ash_2/summon

scoreboard players reset #particle.technological_force_wave.range.fx particle
execute rotated 0 0 run function particle:technological_force_wave/fx