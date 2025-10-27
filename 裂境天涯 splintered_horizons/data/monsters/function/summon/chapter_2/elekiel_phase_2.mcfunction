execute unless score #difficulty global.main matches 1.. run return 0
execute if entity 00000100-0000-0080-0000-008000000005 run return 0

summon skeleton ~ ~ ~ {UUID:[I;256,128,128,5],DeathLootTable:"-",PersistenceRequired:1b,Tags:["monster.elekiel_phase_2.effect","monster","monsters.elekiel_phase_2","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel_phase_2"}}],CustomName:{"bold":false,"color":"gold","italic":false,"translate":"monsters.elekiel_phase_2"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide"},"minecraft:tooltip_display":{hidden_components:["trim"]}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide"},"minecraft:tooltip_display":{hidden_components:["trim"]}}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"air","minecraft:equippable":{slot:"head",asset_id:"air"}}},mainhand:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}]}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

scoreboard players set @s player.detect.is_bossfight 1

scoreboard players set skill.1 monster.elekiel_phase_2.cd 100
scoreboard players set skill.2 monster.elekiel_phase_2.cd 300
scoreboard players set skill.4 monster.elekiel_phase_2.cd 640

tag 00000100-0000-0080-0000-008000000005 remove monsters.spawn

schedule function monsters:chapter_2/elekiel_phase_2/main 1t