# ===================================================
# 劍 蜘蛛 效果 loop2 / sword spider effect loop2

    ## Guide [ function weapons:type/sword/spider/effect/loop2 ] >>> 劍 蜘蛛 效果 loop2 / sword spider effect loop2
    ## Guide [ function dmg_formula:weapons/type/sword/spider/dot/calculate ] >>> weapons 劍 蜘蛛 dot 計算 / weapons sword spider dot calculate
    ## Guide [ function weapons:type/sword/spider/effect/loop ] >>> 劍 蜘蛛 效果 迴圈 / sword spider effect loop

# ===================================================


# cd
scoreboard players remove @s weapon.spider_passive_dot 1

# dmg
scoreboard players operation @a atk = .weapon.spider_passive_dot atk

scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 75

execute \
    as @a[tag=weapon.spider.dot.player] run \
function dmg_formula:weapons/type/sword/spider/dot/calculate

# particle
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1.5 100
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 100