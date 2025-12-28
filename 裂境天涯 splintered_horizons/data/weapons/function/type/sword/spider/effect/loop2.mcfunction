
# cd
scoreboard players remove @s weapon.spider_passive_dot 1

# dmg
scoreboard players operation @a atk = .weapon.spider_passive_dot atk

scoreboard players set @p[tag=atker] atk 75

execute \
    as @a[tag=weapon.spider.dot.player] run \
function dmg_formula:weapons/type/sword/spider/dot/calculate

# particle
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1.5 100
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 100