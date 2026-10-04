# ===================================================
# 投擲 鉤爪 定位點 清除 偵測 / thrown hook point clear detect

    ## Guide [ function weapons:type/drop/hook/point/clear/detect ] >>> 投擲 鉤爪 定位點 清除 偵測 / thrown hook point clear detect
    ## Guide [ function weapons:type/drop/hook/point/tp ] >>> 投擲 鉤爪 定位點 tp / thrown hook point tp

# ===================================================


# effect

execute \
    if entity @n[type=marker,tag=owner,distance=..0.5] run \
return 1

execute at @s \
    unless block ^ ^ ^0.5 #penetrate run \
return 1

execute \
    on passengers \
    unless entity @s[tag=user] run \
return 1

execute \
    unless entity @p[tag=user] run \
return 1

return fail