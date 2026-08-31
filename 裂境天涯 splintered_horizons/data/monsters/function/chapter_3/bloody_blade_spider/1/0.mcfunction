# ===================================================
# 血滴子蜘蛛 技能1 落地擒抱 / bloody blade spider skill 1 grab

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/0 ] >>> 血滴子蜘蛛 技能1 落地擒抱 / bloody blade spider skill 1 grab
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/main ] >>> 血滴子蜘蛛 技能1 分鏡 / bloody blade spider skill 1 timeline
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/fx ] >>> 血滴子蜘蛛 技能1 環狀特效 / bloody blade spider skill 1 ring fx
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/cast/end ] >>> 血滴子蜘蛛 施法 結束並重設冷卻 / bloody blade spider cast end
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/effect/bleeding/use ] >>> 血滴子蜘蛛 流血 施加並騎乘 / bloody blade spider bleeding apply

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
function monsters:chapter_3/bloody_blade_spider/cast/end

execute \
    if score @s sys.skills_freeze matches 0.. run \
return 0

playsound minecraft:item.mace.smash_ground voice @a ~ ~1 ~ 1 1.5
particle dust_pillar{block_state:"minecraft:cobbled_deepslate"} ~ ~1 ~ 1 1 1 0 100 normal

execute \
    rotated ~ 0 run \
function monsters:chapter_3/bloody_blade_spider/1/fx

tag @a[distance=..6,tag=!monsters.bloody_blade_spider.target] add monsters.bloody_blade_spider.target
tag @a[distance=..6,tag=monsters.bloody_blade_spider.target,tag=!animation,gamemode=spectator] remove monsters.bloody_blade_spider.target
tag @a[distance=..6,tag=monsters.bloody_blade_spider.target,gamemode=creative] remove monsters.bloody_blade_spider.target

execute \
    as @a[distance=..6,tag=monsters.bloody_blade_spider.target] \
    if score @s sys.dummy_mob matches 1.. run \
tag @s remove monsters.bloody_blade_spider.target

tag @p[distance=..6,tag=monsters.bloody_blade_spider.target] add temp
tag @a[distance=..6,tag=monsters.bloody_blade_spider.target] add monsters.bloody_blade_spider.passengers

tag @s add victim

execute \
    as @p[distance=..6,tag=monsters.bloody_blade_spider.target,tag=temp] at @s run \
function monsters:chapter_3/bloody_blade_spider/effect/bleeding/use
tag @s remove victim