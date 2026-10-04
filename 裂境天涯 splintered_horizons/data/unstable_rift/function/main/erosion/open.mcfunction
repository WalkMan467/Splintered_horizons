# ===================================================
# 開啟侵蝕度血條 / open the erosion bossbar

    ## Guide [ function unstable_rift:main/erosion/tick ] >>> 侵蝕度 每 tick / erosion tick
    ## Guide [ function unstable_rift:main/erosion/open ] >>> 開啟侵蝕度血條 / open the erosion bossbar
    ## Guide [ function unstable_rift:main/erosion/reset ] >>> 區域清空歸零 / reset when the area empties

# ===================================================

# 參數 : area | erosion_max 上限
#
# 這條血條是整個區域共用的，跟 main/bossbar 那條每人各自的倒數不一樣

$bossbar add unstable_rift.$(area).erosion {"translate":"unstable_rift.erosion","fallback":"侵蝕度"}

$bossbar set unstable_rift.$(area).erosion max $(erosion_max)
$bossbar set unstable_rift.$(area).erosion color white
$bossbar set unstable_rift.$(area).erosion style notched_20
$bossbar set unstable_rift.$(area).erosion value 0
