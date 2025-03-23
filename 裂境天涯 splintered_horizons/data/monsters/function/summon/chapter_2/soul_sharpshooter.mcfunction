summon stray ~ ~ ~ {CustomName:'{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.soul_sharpshooter"}',Health:18f,Tags:["monster","monsters.soul_sharpshooter","monsters.chapter_2","monsters.spawn","team.light"],HandItems:[{id:"minecraft:bow",count:1},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:tide"}}},{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},{id:"minecraft:beacon",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:mending":1},show_in_tooltip:false}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:0.27}]}

execute store result score @n[tag=monsters.spawn,limit=1] monster.skill.cast.cd run random value 60..100

# 掛隊伍
function monsters:-init/team/use


tag @e[tag=monsters.spawn] remove monsters.spawn