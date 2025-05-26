execute unless score #difficulty global.main matches 1.. run return 0

summon skeleton ~ ~ ~ {Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/soul_tree_remnant"}}],Tags:["monster","soul_tree_remnant","monsters.spawn","team.light"],CustomName:{"bold":false,"color":"gold","fallback":"靈魂樹殘像","italic":false,"translate":"monsters.soul_tree_remnant"},HandItems:[{id:"minecraft:wooden_sword",count:1},{id:"minecraft:air",count:1}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:air",count:1},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",equip_sound:"entity.creaking.activate",asset_id:"soul_tree_remnant"},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide",show_in_tooltip:false}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",equip_sound:"entity.creaking.activate",asset_id:"soul_tree_remnant"},"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide",show_in_tooltip:false}}},{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"head/soul_tree_remnant"}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}

# 掛隊伍
schedule function monsters:-init/team/use 1t

tag @e[tag=monsters.spawn] remove monsters.spawn