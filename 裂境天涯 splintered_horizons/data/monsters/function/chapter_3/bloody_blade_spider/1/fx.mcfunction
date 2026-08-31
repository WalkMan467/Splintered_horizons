# ===================================================
# 血滴子蜘蛛 技能1 環狀特效 / bloody blade spider skill 1 ring fx

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/fx ] >>> 血滴子蜘蛛 技能1 環狀特效 / bloody blade spider skill 1 ring fx
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/0 ] >>> 血滴子蜘蛛 技能1 落地擒抱 / bloody blade spider skill 1 grab

# ===================================================

scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust_color_transition{from_color: [1.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.75f, 0.75f, 0.75f]} ^ ^ ^6 0 0 0 0 0 force @a

execute \
    rotated ~3 0 run \
function monsters:chapter_3/bloody_blade_spider/1/fx