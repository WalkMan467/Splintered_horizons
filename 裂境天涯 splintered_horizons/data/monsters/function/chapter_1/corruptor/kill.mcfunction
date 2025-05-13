particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 40 normal @a
playsound minecraft:entity.glow_squid.squirt voice @a ~ ~1 ~ 0.5 1

summon area_effect_cloud ~ ~ ~ {Particle:{type:"dust_color_transition",from_color:[0.000,1.000,0.102],scale:1.5,to_color:[0.000,0.502,0.051]},Radius:1f,RadiusPerTick:0.025f,Duration:100,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:2,duration:40,show_particles:1b,show_icon:1b,ambient:1b}]}}

summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],Particle:{type:"block",block_state:"air"},Radius:0}