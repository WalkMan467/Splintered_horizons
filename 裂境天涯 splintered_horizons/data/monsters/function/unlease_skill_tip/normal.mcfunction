# ===================================================
# 技能預告 一般 / skill tip normal

    ## Guide [ function monsters:unlease_skill_tip/normal ] >>> 技能預告 一般 / skill tip normal
    ## Guide [ function monsters:unlease_skill_tip/use ] >>> 技能預告 分派 / skill tip dispatch

# ===================================================

particle dust_color_transition{from_color: [1.0f, 1.0f, 0.0f], scale: 1f, to_color: [1.0f, 1.0f, 1.0f]} ~ ~ ~ 0.1 10 0.1 0 500 normal
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
playsound entity.experience_orb.pickup voice @a[distance=..15] ~ ~1 ~ 5 1
