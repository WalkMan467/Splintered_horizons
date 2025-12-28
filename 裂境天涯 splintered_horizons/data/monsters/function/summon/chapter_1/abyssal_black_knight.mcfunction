
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon zombie ~ ~ ~ {CustomNameVisible:1b,Health:20f,IsBaby:0b,CanBreakDoors:1b,Tags:["monsters.spawn","monsters.abyssal_black_knight","monsters.chapter_1","monster"],CustomName:{"bold":true,"color":"dark_red","fallback":"深淵黑騎","italic":false,"translate":"monsters.abyssal_black_knight"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:equippable":{slot:"feet",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:tide"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcyMjI1ODI3MjQ2MywKICAicHJvZmlsZUlkIiA6ICI3ZjU2ZjY1MDI2NjY0ZmM1OWFjNWYyYjVjMTNlZGY3NyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNYXhBbnRvbnkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQwYzU1M2U1YTk5OWVhYjU0YmMxN2NiNTE1MTkzNzhhMDI2MzYwMGNhZDg5MjBiNzQyZmZkMWZmZGMyZWE0MSIKICAgIH0KICB9Cn0="}]}}},mainhand:{id:"minecraft:music_disc_11",count:1,components:{"minecraft:item_model":"sword/giant_blade/1"}},offhand:{id:"minecraft:music_disc_11",count:1,components:{"minecraft:item_model":"minecraft:shield"}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:scale",base:1.25}]}


execute \
    store result score @n[tag=monsters.spawn,type=zombie] monster.skill.cast.cd run \
random value 60..100

playsound minecraft:entity.phantom.bite voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.creaking.spawn voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.warden.agitated voice @a ~ ~1 ~ 1 0.85

particle minecraft:squid_ink ~ ~1 ~ 0.25 0.5 0.25 0.5 60 force @a
particle dust{color: [0.0f, 0.0f, 0.0f], scale: 3.5f} ~ ~1 ~ 0.375 0.75 0.375 0 150 normal @a

tag @n[tag=monsters.spawn,type=zombie] remove monsters.spawn