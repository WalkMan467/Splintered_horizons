# ===================================================
# 夢魘 深淵爆炸 毒液 特效環 / abyss explode poison ring fx

    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/fx ] >>> 夢魘 深淵爆炸 毒液 特效環 / abyss explode poison ring fx
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/point/guide ] >>> 夢魘 深淵爆炸 爆點 計時 / abyss explode point timer
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/end ] >>> 夢魘 深淵爆炸 毒液 落地 / abyss explode poison landed

# ===================================================

scoreboard players add #monster.abyss_explode.fx particle 5

particle dust_color_transition{from_color:[0.000,0.020,0.012],to_color:[0.000,0.459,0.275],scale:1} ^ ^0.25 ^1.25 0 0 0 0 0 force @a

execute rotated ~5 0 \
    if score #monster.abyss_explode.fx particle matches ..360 run \
function monsters:generic/nightmare_difficulty/abyss_explode/poison/fx