execute \
    unless score @s monster.bloody_blade_spider.dot.delay matches 10.. run \
    return run \
scoreboard players add @s monster.bloody_blade_spider.dot.delay 1

damage @s 1 monsters:chapter_3/bloody_blade_spider/dot by @n[sort=arbitrary,distance=..2,tag=monsters.bloody_blade_spider,type=spider]

scoreboard players reset @s monster.bloody_blade_spider.dot.delay
scoreboard players set @s player.animation.lock 20