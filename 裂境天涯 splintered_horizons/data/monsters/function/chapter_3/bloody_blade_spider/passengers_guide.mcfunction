execute \
    on vehicle \
    if entity @s[tag=monsters.bloody_blade_spider,type=spider] run \
return 0

function cse:status_effects/apply/bleeding/clear

tag @s remove monsters.bloody_blade_spider.passengers