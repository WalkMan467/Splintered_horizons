
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon stray ~ ~ ~ {Health:18f,Tags:["monster","monsters.soul_tree_remnant","monsters.chapter_2","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/soul_sharpshooter"}}],CustomName:{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.soul_tree_remnant"},equipment:{feet:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:tide"}}},chest:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},head:{id:"minecraft:beacon",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:mending":1}}}},mainhand:{id:"minecraft:bow",count:1},offhand:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:0.27}]}


execute store result score @n[tag=monsters.spawn,limit=1] monster.skill.cast.cd run \
random value 60..100

tag @e[tag=monsters.spawn] remove monsters.spawn