# Cast

execute \
    if score @s monster.skill.cast.cd matches ..0 run \
function monsters:chapter_3/bloody_blade_spider/cast/cast


execute \
    on passengers at @s \
    if entity @s[type=block_display,tag=monsters.bloody_blade_spider.display] rotated \
    as @n[distance=..1.5,tag=monsters.bloody_blade_spider,type=spider] run \
rotate @s ~ 0