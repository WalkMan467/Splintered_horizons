
# dmg
tag @e[type=!player,type=!#minecraft:dummy_mob,scores={weapon.spider_passive_dot=1..},tag=weapon.spider.dot] add dmger

execute \
    as @e[type=!player,type=!#minecraft:dummy_mob,tag=dmger,tag=weapon.spider.dot] at @s run \
function weapons:type/sword/spider/effect/loop2

schedule function weapons:type/sword/spider/effect/loop 1s