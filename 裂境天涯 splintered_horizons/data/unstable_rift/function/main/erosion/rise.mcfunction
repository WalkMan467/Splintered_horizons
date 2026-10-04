# ===================================================
# 每秒上升 / rise once per second

    ## Guide [ function unstable_rift:main/erosion/tick ] >>> 侵蝕度 每 tick / erosion tick
    ## Guide [ function unstable_rift:main/erosion/rise ] >>> 每秒上升 / rise once per second

# ===================================================

# 參數 : area | erosion_max 上限

$scoreboard players set #unstable_rift.$(area).erosion.tick global.main 0

$scoreboard players operation #unstable_rift.$(area).erosion global.main += #unstable_rift.$(area).erosion.rate global.main

$execute \
    if score #unstable_rift.$(area).erosion global.main matches $(erosion_max).. run \
scoreboard players set #unstable_rift.$(area).erosion global.main $(erosion_max)
