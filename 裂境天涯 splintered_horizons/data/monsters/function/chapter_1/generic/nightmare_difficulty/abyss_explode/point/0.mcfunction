function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/poison/summon

particle dust_pillar{block_state:"minecraft:sculk"} ~ ~ ~ 0.375 0.25 0.375 0 40 force @a
playsound minecraft:block.trial_spawner.ambient_ominous voice @a ~ ~ ~ 1 1.5
playsound minecraft:entity.glow_squid.hurt voice @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.glow_squid.squirt voice @a ~ ~ ~ 0.5 1

playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5

particle block{block_state:"minecraft:sculk"} ~ ~ ~ 0.5 0.25 0.5 1 100 force @a