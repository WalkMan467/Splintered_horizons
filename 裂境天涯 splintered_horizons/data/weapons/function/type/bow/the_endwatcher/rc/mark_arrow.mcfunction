# ===================================================
# 弓 終焉凝視者 右鍵 標記箭矢 / bow the endwatcher right click mark arrow

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/mark_arrow ] >>> 弓 終焉凝視者 右鍵 標記箭矢 / bow the endwatcher right click mark arrow
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/mark_scan ] >>> 弓 終焉凝視者 右鍵 掃描箭矢 / bow the endwatcher right click scan arrow

# ===================================================

# 執行者 : 剛射出去的箭
#
# on origin 確認是「拿著這把弓的人」射的，不然會標到旁邊別人的箭
#
# 只加實體 tag，不動箭矢物品的 custom_data：
# 流血箭矢、傷害共鳴箭矢這些特殊箭靠 custom_data 的 id 判斷命中效果，
# 覆蓋掉就等於把它們變回普通箭終焉凝視者自己的命中進度改看這個 tag

execute \
    on origin \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"the_endwatcher"}] run \
return 0

tag @s add weapon.the_endwatcher.arrow
