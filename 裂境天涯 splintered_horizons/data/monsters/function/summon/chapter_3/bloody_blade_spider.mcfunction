
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon spider ~ ~ ~ {PersistenceRequired:1b,Health:30f,Tags:["monsters.spawn","monsters.bloody_blade_spider","monsters.chapter_3","monster"],CustomName:{"bold":true,"color":"dark_red","fallback":"血滴子蜘蛛","italic":false,"translate":"monsters.bloody_blade_spider"},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:attack_damage",base:8},{id:"minecraft:follow_range",base:60},{id:"minecraft:max_health",base:30},{id:"minecraft:tempt_range",base:60}]}


execute store result score @n[tag=monsters.spawn,type=spider] monster.skill.cast.cd run \
random value 60..100

playsound minecraft:entity.phantom.bite voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.creaking.spawn voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.warden.agitated voice @a ~ ~1 ~ 1 0.85

particle minecraft:squid_ink ~ ~1 ~ 0.25 0.5 0.25 0.5 60 force @a
particle dust{color: [0.0f, 0.0f, 0.0f], scale: 3.5f} ~ ~1 ~ 0.375 0.75 0.375 0 150 normal @a

tag @n[tag=monsters.spawn,type=spider] remove monsters.spawn