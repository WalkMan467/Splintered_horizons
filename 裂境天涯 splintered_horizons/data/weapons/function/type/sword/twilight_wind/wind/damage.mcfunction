# ===================================================
# 劍 暮光之風 wind 傷害 / sword twilight wind wind damage

    ## Guide [ function weapons:type/sword/twilight_wind/wind/damage ] >>> 劍 暮光之風 wind 傷害 / sword twilight wind wind damage
    ## Guide [ function weapons:type/sword/twilight_wind/wind/main ] >>> 劍 暮光之風 wind 主迴圈 / sword twilight wind wind loop

# ===================================================


# effect
tag @s add dmger


execute \
    as @a \
    if score @s player.id = #this player.id run \
tag @s add atker
damage @s 5 weapons:type/sword/twilight_wind by @p[tag=atker]
tag @p[tag=atker] remove atker