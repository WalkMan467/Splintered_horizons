
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon skeleton ~ ~ ~ {PersistenceRequired:1b,Health:15f,Tags:["monsters.spawn","monster","monster.explosion_arrow_skeleton"],CustomName:{"bold":true,"color":"dark_red","fallback":"深淵射手","italic":false,"translate":"monster.explosion_arrow_skeleton"},equipment:{feet:{id:"minecraft:light",count:1,components:{trim:{material:"resin",pattern:"tide"},"minecraft:equippable":{slot:"feet",asset_id:"netherite"}}},legs:{id:"minecraft:light",count:1,components:{"minecraft:equippable":{slot:"legs",asset_id:"explosion_arrow_skeleton"}}},chest:{id:"minecraft:light",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"explosion_arrow_skeleton"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTczMTkyNTIxMDQxNiwKICAicHJvZmlsZUlkIiA6ICJmMjc0YzRkNjI1MDQ0ZTQxOGVmYmYwNmM3NWIyMDIxMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJIeXBpZ3NlbCIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iYmQ1ZjRiNjFkYmYyYTIxNzMzNjA1YmNiMDI4MTdjODU3NmU0YTMxOTU3NmJmM2VlMTk2ZDc3ODcyZmI0MTAxIgogICAgfQogIH0KfQ=="}]}}},mainhand:{id:"minecraft:bow",count:1},offhand:{id:"minecraft:arrow",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:6},{id:"minecraft:armor_toughness",base:1},{id:"minecraft:follow_range",base:32},{id:"minecraft:max_health",base:15},{id:"minecraft:movement_speed",base:0.25}]}


execute \
    store result score @n[tag=monsters.spawn,type=skeleton,tag=monster.explosion_arrow_skeleton] monster.skill.cast.cd run \
random value 60..100

tag @e[tag=monsters.spawn] remove monsters.spawn