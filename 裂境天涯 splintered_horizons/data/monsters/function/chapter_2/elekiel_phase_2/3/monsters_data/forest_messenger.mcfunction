data merge entity @s {DeathLootTable:"",CanPickUpLoot:0b,Health:12f,Tags:["monster.elekiel_phase_2.3","monster","monster.forest_messenger","monsters.spawn"],CustomName:{"bold":false,"color":"red","fallback":"Red Demonized Abyss Destroyer","italic":false,"translate":"monster.red_demonized_abyss_destroyer"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"feet"}],"minecraft:dyed_color":14249753,"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":14249753,"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide"}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"armor_of_the_coiled_rock"},"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTYxOTgxMDM4MTgxNywKICAicHJvZmlsZUlkIiA6ICIxNzhmMTJkYWMzNTQ0ZjRhYjExNzkyZDc1MDkzY2JmYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJzaWxlbnRkZXRydWN0aW9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzk5ZmJhOGQ3YjFiYzI5MDFhZTE5MzM3NjMyOTk0MTgyNDc0OWRjOWQxZDMxMmU4ODI4MDJjYzU1ZmY5MjRkZTEiCiAgICB9CiAgfQp9"}]}}},mainhand:{id:"minecraft:bow",count:1},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:armor",base:5},{id:"minecraft:max_health",base:15},{id:"minecraft:movement_speed",base:0.27}]}


execute \
    store result score @s monster.skill.cast.cd run \
random value 60..160

summon marker ~ ~ ~ {Tags:["monster.marker","main.duration.timer","summon"],data:{Death:"chapter_2/elekiel_phase_2/3/monsters_data",aj_kill:{name:""}}}

ride @n[tag=main.duration.timer,distance=..5,tag=summon,type=marker] mount @s[tag=monsters.spawn]

scoreboard players set @n[distance=0..,tag=main.duration.timer,tag=summon,type=marker] duration 200
tag @n[tag=main.duration.timer,distance=..5,tag=summon,type=marker] remove summon

tag @s remove monsters.spawn