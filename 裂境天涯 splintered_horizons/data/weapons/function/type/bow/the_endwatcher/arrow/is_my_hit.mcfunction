# ===================================================
# 弓 終焉凝視者 箭矢 是否為自己射的 / bow the endwatcher arrow is my hit

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/is_my_hit ] >>> 弓 終焉凝視者 箭矢 是否為自己射的 / bow the endwatcher arrow is my hit
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/hit ] >>> 弓 終焉凝視者 箭矢 命中 / bow the endwatcher arrow hit

# ===================================================

# 執行者 : 候選的敵人
# 最後打它的是觸發進度的那個玩家就回傳 1，否則整支不會執行到任何指令，結果是 0

execute \
    on attacker \
    if entity @s[tag=weapon.the_endwatcher.hitter] run \
return 1
