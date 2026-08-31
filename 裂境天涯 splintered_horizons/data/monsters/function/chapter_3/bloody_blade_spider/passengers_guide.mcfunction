# ===================================================
# 血滴子蜘蛛 乘客脫離偵測 / bloody blade spider passenger release

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/passengers_guide ] >>> 血滴子蜘蛛 乘客脫離偵測 / bloody blade spider passenger release
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main.monster ] >>> 血滴子蜘蛛 本體 冷卻與乘客處理 / bloody blade spider self tick

# ===================================================

execute \
    on vehicle \
    if entity @s[tag=monsters.bloody_blade_spider,type=spider] run \
return 0

function cse:status_effects/apply/bleeding/clear

tag @s remove monsters.bloody_blade_spider.passengers