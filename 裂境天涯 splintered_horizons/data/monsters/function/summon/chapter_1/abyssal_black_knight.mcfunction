execute unless score #difficulty global.main matches 1.. run return 0

summon zombie ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.abyssal_black_knight","fallback": "深淵黑騎"}',Health:20f,IsBaby:0b,CanBreakDoors:1b,Tags:["monsters.spawn","monsters.abyssal_black_knight","monsters.chapter_1","monster"],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:equippable":{slot:"feet",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:tide"}}},{id:"minecraft:leather",count:1,components:{"minecraft:equippable":{slot:"legs",asset_id:"netherite"}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:tide"}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTYyMzQ1NTg0MTIxMywKICAicHJvZmlsZUlkIiA6ICI3MzgyZGRmYmU0ODU0NTVjODI1ZjkwMGY4OGZkMzJmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICJCdUlJZXQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRjNTc3ODdjYmViZDYxNzFmNDhkMDRmZmFjMTZiMjk3Yzc2NmEzOWQwYmNiNWNjZDg1ZDg1NjhlOWYyN2I0NSIKICAgIH0KICB9Cn0="}]}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:scale",base:1.25}]}

execute store result score @n[tag=monsters.spawn,type=zombie] monster.skill.cast.cd run random value 60..100

playsound minecraft:entity.phantom.bite voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.creaking.spawn voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.warden.agitated voice @a ~ ~1 ~ 1 0.85

particle minecraft:squid_ink ~ ~1 ~ 0.25 0.5 0.25 0.5 60 force @a
particle dust{color: [0.0f, 0.0f, 0.0f], scale: 3.5f} ~ ~1 ~ 0.375 0.75 0.375 0 150 normal @a

tag @n[tag=monsters.spawn,type=zombie] remove monsters.spawn