# ===================================================

# orphan scan


    ## Guide [ function monsters:generic/freeze/orphan/scan ] >>> orphan scan

    ## Guide [ function monsters:generic/freeze/orphan/dimension ] >>> dimension

    ## Guide [ function monsters:generic/freeze/end ] >>> end


# ===================================================


# 這層冰是騎在怪身上的，怪正常死掉時 detect_kill 會 on passengers 一起清掉，
# 但怪被瞬間移除（苦力怕自爆、kill 指令）時乘客只會被踢下來，冰就留在原地
#
# 由 sys:attachable_component/skills_freeze/ice_display/death/schedule 每 tick 帶一次，
# 排程函數的執行維度固定是主世界，選擇器不跨維度，必須逐個維度跑一次

execute \
    in minecraft:overworld run \
function monsters:generic/freeze/orphan/dimension

execute \
    in minecraft:the_nether run \
function monsters:generic/freeze/orphan/dimension

execute \
    in minecraft:the_end run \
function monsters:generic/freeze/orphan/dimension

execute \
    in world_area:main/game_lobby run \
function monsters:generic/freeze/orphan/dimension
