# ===================================================
# 血滴子蜘蛛 本體 冷卻與乘客處理 / bloody blade spider self tick

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main.monster ] >>> 血滴子蜘蛛 本體 冷卻與乘客處理 / bloody blade spider self tick
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main ] >>> 血滴子蜘蛛 主程式 / bloody blade spider main
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/1 ] >>> 血滴子蜘蛛 技能1 持續流血傷害 / bloody blade spider skill 1 dot
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/cast/cast ] >>> 血滴子蜘蛛 施法 開始 / bloody blade spider cast begin
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/passengers_guide ] >>> 血滴子蜘蛛 乘客脫離偵測 / bloody blade spider passenger release
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_3/bloody_blade_spider/cast/cast

execute \
    on passengers \
    if entity @s[type=player] run \
function monsters:chapter_3/bloody_blade_spider/1/1

execute \
    as @a[tag=monsters.bloody_blade_spider.passengers] at @s run \
function monsters:chapter_3/bloody_blade_spider/passengers_guide

execute \
    on passengers at @s \
    if entity @s[type=block_display,tag=monsters.bloody_blade_spider.display] rotated \
    as @n[distance=..1.5,tag=monsters.bloody_blade_spider,type=spider] run \
rotate @s ~ 0