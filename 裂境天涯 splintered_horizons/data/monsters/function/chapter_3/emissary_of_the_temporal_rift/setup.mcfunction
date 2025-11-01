
data merge entity @s {PersistenceRequired:1b,CustomName:{"color":"dark_red","fallback":"Emissary of the Temporal Rift","translate":"monsters.emissary_of_the_temporal_rift"},equipment:{feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:tide"},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"feet"}]}},legs:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"legs"}],"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:tide"}}},chest:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"chest"}],"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:tide"}}},head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:tide"},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"hand"}]}},mainhand:{id:"minecraft:bow",count:1},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.27}]}

scoreboard players add #index monster.emissary_of_the_temporal_rift.id 1

scoreboard players operation @s monster.emissary_of_the_temporal_rift.id = #index monster.emissary_of_the_temporal_rift.id
scoreboard players display name @s monster.emissary_of_the_temporal_rift.id [{selector:"@s",bold:false,color:"white"},{text:" "},{score:{name:"@s",objective:"monster.emissary_of_the_temporal_rift.id"}}]

tag @s add monsters.emissary_of_the_temporal_rift
tag @s add monster

execute store result score @s monster.skill.cast.cd run random value 60..100