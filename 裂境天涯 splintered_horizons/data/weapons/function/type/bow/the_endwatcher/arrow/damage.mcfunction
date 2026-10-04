# ===================================================
# 弓 終焉凝視者 箭矢 釋放傷害 / bow the endwatcher arrow release damage

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/damage ] >>> 弓 終焉凝視者 箭矢 釋放傷害 / bow the endwatcher arrow release damage
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/release ] >>> 弓 終焉凝視者 箭矢 釋放累積傷害 / bow the endwatcher arrow release stored damage

# ===================================================

# 執行者 : 被射中的敵人
# 參數 : value  這次釋放的傷害
#
# 這一下跟箭本身的傷害同一 tick，所以傷害類型掛在 bypasses_cooldown 底下，
# 不然會被受傷間隔整個吃掉

$damage @s $(value) weapons:type/bow/the_endwatcher/awaken by @p[sort=arbitrary,distance=..64,tag=weapon.the_endwatcher.hitter]
