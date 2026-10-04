# ===================================================
# 技能預告 夢魘 / skill tip nightmare

    ## Guide [ function monsters:unlease_skill_tip/nightmare_difficulty ] >>> 技能預告 夢魘 / skill tip nightmare
    ## Guide [ function monsters:unlease_skill_tip/use ] >>> 技能預告 分派 / skill tip dispatch

# ===================================================

particle dust_color_transition{from_color: [1.0f, 0.0f, 1.0f], scale: 1f, to_color: [0.0f, 0.0f, 0.0f]} ~ ~ ~ 0.1 10 0.1 0 500 normal
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
playsound entity.experience_orb.pickup voice @a[distance=..15] ~ ~1 ~ 5 0.75

tag @s remove monsters.nightmare_skills