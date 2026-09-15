# ===================================================
# 弓 終焉凝視者 箭矢 命中處理 / bow the endwatcher arrow victim

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/victim ] >>> 弓 終焉凝視者 箭矢 命中處理 / bow the endwatcher arrow victim
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/hit ] >>> 弓 終焉凝視者 箭矢 命中 / bow the endwatcher arrow hit
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/charge ] >>> 弓 終焉凝視者 箭矢 共鳴充能 / bow the endwatcher arrow resonance charge
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/release ] >>> 弓 終焉凝視者 箭矢 釋放累積傷害 / bow the endwatcher arrow release stored damage

# ===================================================

# 執行者 : 被第二段蓄力箭射中的敵人

execute \
    if score #mode weapon.the_endwatcher.stage matches 1 run \
    return run \
function weapons:type/bow/the_endwatcher/arrow/release

function weapons:type/bow/the_endwatcher/arrow/charge
