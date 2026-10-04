# ===================================================
# 離開破碎之城 / leave the broken city

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/out ] >>> 離開破碎之城 / leave the broken city
    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down

# ===================================================

advancement revoke @s only unstable_rift:chapter_1/1/in

execute \
    unless entity @s[tag=unstable_rift.chapter_1.1] run \
return 0

function unstable_rift:chapter_1/1/clear

say out
