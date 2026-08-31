# ===================================================
# 繭 移除 遞迴清乘客 / cocoon remove passengers

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/remove_guide ] >>> 繭 移除 遞迴清乘客 / cocoon remove passengers
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/remove ] >>> 繭 移除 入口 / cocoon remove entry

# ===================================================

execute \
    if entity @s[type=player] run \
return 0

execute \
    on passengers run \
kill @s
kill @s