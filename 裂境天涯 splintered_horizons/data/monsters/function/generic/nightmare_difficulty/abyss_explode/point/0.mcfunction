# ===================================================
# 夢魘 深淵爆炸 爆點 引爆 / abyss explode point detonate

    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/point/0 ] >>> 夢魘 深淵爆炸 爆點 引爆 / abyss explode point detonate
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/point/guide ] >>> 夢魘 深淵爆炸 爆點 計時 / abyss explode point timer
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/summon ] >>> 夢魘 深淵爆炸 毒液 生成 / abyss explode poison summon

# ===================================================

function monsters:generic/nightmare_difficulty/abyss_explode/poison/summon

particle dust_pillar{block_state:"minecraft:sculk"} ~ ~ ~ 0.375 0.25 0.375 0 40 force @a
playsound minecraft:block.trial_spawner.ambient_ominous voice @a ~ ~ ~ 1 1.5
playsound minecraft:entity.glow_squid.hurt voice @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.glow_squid.squirt voice @a ~ ~ ~ 0.5 1

playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5

particle block{block_state:"minecraft:sculk"} ~ ~ ~ 0.5 0.25 0.5 1 100 force @a