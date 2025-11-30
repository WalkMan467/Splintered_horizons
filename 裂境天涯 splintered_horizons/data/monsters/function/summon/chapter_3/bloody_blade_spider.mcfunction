execute unless score #difficulty global.main matches 1.. run return 0

summon spider ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:30f,Tags:["monsters.spawn","monsters.bloody_blade_spider","monsters.chapter_3","monster"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_3/bloody_blade_spider"}},{id:"minecraft:block_display",brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-1f],scale:[1f,1f,1f]},Tags:["monsters.bloody_blade_spider.display"],block_state:{Name:"minecraft:stonecutter",Properties:{facing:"south"}}}],CustomName:{"bold":true,"color":"dark_red","fallback":"血滴子蜘蛛","italic":false,"translate":"monsters.bloody_blade_spider"},equipment:{chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"chest"}],"minecraft:enchantments":{"armors:resilient":1}}}},drop_chances:{chest:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:30}]}

execute store result score @n[tag=monsters.spawn,type=spider] monster.skill.cast.cd run random value 60..100

playsound minecraft:entity.phantom.bite voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.creaking.spawn voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.warden.agitated voice @a ~ ~1 ~ 1 0.85

particle minecraft:squid_ink ~ ~1 ~ 0.25 0.5 0.25 0.5 60 force @a
particle dust{color: [0.0f, 0.0f, 0.0f], scale: 3.5f} ~ ~1 ~ 0.375 0.75 0.375 0 150 normal @a

tag @n[tag=monsters.spawn,type=spider] remove monsters.spawn