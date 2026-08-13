# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #now global.time run \
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