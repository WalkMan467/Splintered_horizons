# ===================================================
# 跨階段 / cross a stage threshold

    ## Guide [ function unstable_rift:main/erosion/stage ] >>> 算階段 / resolve the stage
    ## Guide [ function unstable_rift:main/erosion/change ] >>> 跨階段 / cross a stage threshold
    ## Guide [ function unstable_rift:chapter_1/1/erosion/stage ] >>> 破碎之城 階段效果 / broken city stage effects

# ===================================================

# 參數 : area | path
#
# 只在跨越門檻的那一 tick 跑一次，升階降階都會進來。
# 這裡只做通用的血條表現，真正的空間變化交給各區域自己的 erosion/stage。

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 0 run \
bossbar set unstable_rift.$(area).erosion color white

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 1 run \
bossbar set unstable_rift.$(area).erosion color yellow

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 2 run \
bossbar set unstable_rift.$(area).erosion color red

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 3.. run \
bossbar set unstable_rift.$(area).erosion color purple

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 0 run \
bossbar set unstable_rift.$(area).erosion name ["",{"translate":"unstable_rift.erosion","fallback":"侵蝕度"},{"text":"  "},{"translate":"unstable_rift.erosion.stage.0","fallback":"穩定"}]

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 1 run \
bossbar set unstable_rift.$(area).erosion name ["",{"translate":"unstable_rift.erosion","fallback":"侵蝕度"},{"text":"  "},{"translate":"unstable_rift.erosion.stage.1","fallback":"鬆動"}]

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 2 run \
bossbar set unstable_rift.$(area).erosion name ["",{"translate":"unstable_rift.erosion","fallback":"侵蝕度"},{"text":"  "},{"translate":"unstable_rift.erosion.stage.2","fallback":"錯位"}]

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 3 run \
bossbar set unstable_rift.$(area).erosion name ["",{"translate":"unstable_rift.erosion","fallback":"侵蝕度"},{"text":"  "},{"translate":"unstable_rift.erosion.stage.3","fallback":"崩解"}]

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 4 run \
bossbar set unstable_rift.$(area).erosion name ["",{"translate":"unstable_rift.erosion","fallback":"侵蝕度"},{"text":"  "},{"translate":"unstable_rift.erosion.stage.4","fallback":"吞噬"}]

$function unstable_rift:$(path)/erosion/stage with storage unstable_rift:main args
