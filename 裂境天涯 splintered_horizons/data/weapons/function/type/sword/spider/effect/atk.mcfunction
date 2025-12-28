# Executor: Player
tag @s add weapon.spider.dot.player

execute \
    store result score @s[tag=weapon.spider.dot.player] weapon.spider_passive_dot run \
attribute @s attack_damage get
tag @e[type=!#minecraft:dummy_mob,tag=!weapon.spider.dot,type=!player,distance=..4] add weapon.spider.dot


execute \
    as @e[type=!player,type=!#minecraft:dummy_mob,tag=weapon.spider.dot] \
    unless score @s weapon.spider_passive_dot matches 1.. run \
scoreboard players set @s weapon.spider_passive_dot 5