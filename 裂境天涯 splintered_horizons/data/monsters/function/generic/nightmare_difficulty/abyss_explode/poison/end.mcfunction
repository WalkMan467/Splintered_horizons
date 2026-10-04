# ===================================================
# 夢魘 深淵爆炸 毒液 落地 / abyss explode poison landed

    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/end ] >>> 夢魘 深淵爆炸 毒液 落地 / abyss explode poison landed
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/guide ] >>> 夢魘 深淵爆炸 毒液 飛行中 / abyss explode poison in flight
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/fx ] >>> 夢魘 深淵爆炸 毒液 特效環 / abyss explode poison ring fx

# ===================================================

kill @s

particle dust_pillar{block_state:"minecraft:sculk"} ~ ~ ~ 0.625 0.25 0.625 0 5 force @a

playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5

particle block{block_state:"minecraft:sculk"} ~ ~ ~ 0.5 0.25 0.5 1 20 force @a

scoreboard players reset #monster.abyss_explode.fx particle
execute \
    rotated ~ 0 run \
function monsters:generic/nightmare_difficulty/abyss_explode/poison/fx