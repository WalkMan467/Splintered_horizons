# ===================================================
# 劍 暮光之風 wind 主迴圈 / sword twilight wind wind loop

    ## Guide [ function weapons:type/sword/twilight_wind/wind/main ] >>> 劍 暮光之風 wind 主迴圈 / sword twilight wind wind loop
    ## Guide [ function weapons:type/sword/twilight_wind/wind/damage ] >>> 劍 暮光之風 wind 傷害 / sword twilight wind wind damage
    ## Guide [ function weapons:type/sword/twilight_wind/wind/clear ] >>> 劍 暮光之風 wind 清除 / sword twilight wind wind clear
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================


# effect
    # speed
tp @s ^ ^ ^0.6

    # dmg
scoreboard players operation #this player.id = @s player.id

execute \
    positioned ~ ~-1.5 ~ \
    as @n[type=!#minecraft:dummy_mob,type=!player,distance=..2] at @s run \
function weapons:type/sword/twilight_wind/wind/damage

    # reset

execute \
    if score @s duration matches ..0 run \
function weapons:type/sword/twilight_wind/wind/clear

# particle
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^ ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^0.25 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^0.5 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^0.75 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^1 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-0.25 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-0.5 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-0.75 ^ ^ 0.1 0.1 0.1 0 5 normal @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-1 ^ ^ 0.1 0.1 0.1 0 5 normal @a