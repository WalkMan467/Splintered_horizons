
execute \
    if score @s monster.skill.freeze matches 0.. run \
function monsters:chapter_3/bloody_blade_spider/cast/end

execute \
    if score @s monster.skill.freeze matches 0.. run \
return 0

playsound minecraft:item.mace.smash_ground voice @a ~ ~1 ~ 1 1.5
particle dust_pillar{block_state:"minecraft:cobbled_deepslate"} ~ ~1 ~ 1 1 1 0 100 normal

scoreboard players reset #monster.bloody_blade_spider.fx particle

execute rotated ~ 0 run \
function monsters:chapter_3/bloody_blade_spider/1/fx


execute on passengers run \
ride @s[type=player] dismount

tag @a[distance=..6,tag=!monsters.bloody_blade_spider.target] add monsters.bloody_blade_spider.target
tag @a[distance=..6,tag=monsters.bloody_blade_spider.target,tag=!animation,gamemode=spectator] remove monsters.bloody_blade_spider.target
tag @a[distance=..6,tag=monsters.bloody_blade_spider.target,gamemode=creative] remove monsters.bloody_blade_spider.target


execute \
    as @a[distance=..6,tag=monsters.bloody_blade_spider.target] \
    if score @s entity.dummy_mob matches 1.. run \
tag @s remove monsters.bloody_blade_spider.target

tag @p[distance=..6,tag=monsters.bloody_blade_spider.target] add temp

tag @s add victim

execute \
    as @p[distance=..6,tag=monsters.bloody_blade_spider.target,tag=temp] at @s run \
function monsters:chapter_3/bloody_blade_spider/effect/bleeding/use
tag @s remove victim