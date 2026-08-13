
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon stray ~ ~ ~ {Health:18f,Tags:["monster","monsters.soul_sharpshooter","monsters.chapter_2","summon"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"monsters:chapter_2/soul_sharpshooter"}}],CustomName:{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.soul_sharpshooter"},equipment:{feet:{id:"minecraft:chainmail_boots",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:tide"}}},chest:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},head:{id:"minecraft:beacon",count:1,components:{"minecraft:enchantments":{"minecraft:mending":1}}},mainhand:{id:"minecraft:bow",count:1},offhand:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:0.27}]}


execute \
    store result score @n[tag=summon,distance=..1,sort=arbitrary,type=stray] monster.skill.cast.cd run \
random value 60..100

scoreboard players set @n[tag=summon,distance=..1,sort=arbitrary,type=stray] monster.skill.rdm.skill 1

execute \
    if score #nightmare main.difficulty matches 1.. \
    store result score @n[tag=summon,distance=..1,sort=arbitrary,type=stray] monster.skill.rdm.skill run \
random value 1..2

tag @n[scores={monster.skill.rdm.skill=2},tag=summon,distance=..1,sort=arbitrary,type=stray] add monsters.nightmare_skills

tag @n[tag=summon,distance=..1,sort=arbitrary,type=stray] remove summon