execute unless score #difficulty global.main matches 1.. run return 0

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
advancement grant @a only monsters:chapter_2/elekiel/1/battlefield/normal

summon skeleton ~ ~ ~ {DeathLootTable:"-",PersistenceRequired:1b,Tags:["monster","monsters.elekiel","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel"}}],CustomName:{"bold":false,"color":"gold","fallback":"靈魂樹殘像","italic":false,"translate":"monsters.elekiel"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide",show_in_tooltip:false}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide",show_in_tooltip:false}}},head:{id:"minecraft:stone_button",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:8},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

execute store result score @n[tag=monsters.spawn,type=skeleton,tag=monsters.elekiel] monster.skill.cast.cd run random value 60..100
execute store result score @n[tag=monsters.spawn,type=skeleton,tag=monsters.elekiel] monster.skill.rdm.skill run random value 1..2
scoreboard players set $monster.chapter_2.elekiel.3.cd monster.elekiel.skill 100

tag @e[tag=monsters.spawn] remove monsters.spawn