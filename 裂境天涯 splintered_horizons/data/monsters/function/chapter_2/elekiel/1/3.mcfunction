
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

scoreboard players reset $summon monster.elekiel.1.terrain
scoreboard players reset #temp.2 global.main

execute \
    unless score #repeat global.main matches 1.. run \
    return run \
scoreboard players reset #repeat global.main

# afb22e74-a7d5-4c08-a254-85281e83cd83
summon area_effect_cloud 912 60 2018 {UUID:[I;-1347277196,-1479193592,-1571519192,511954307],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.elekiel.1.spawnpoint"]}

spreadplayers 912 2018 5 20 under 60 false afb22e74-a7d5-4c08-a254-85281e83cd83

execute \
    at afb22e74-a7d5-4c08-a254-85281e83cd83 \
    if block ~ ~-1 ~ minecraft:structure_void run \
    return run \
function monsters:chapter_2/elekiel/1/3

execute \
    at afb22e74-a7d5-4c08-a254-85281e83cd83 run \
summon skeleton ~ 60 ~ {Glowing:1b,Team:"glow.red",DeathLootTable:"-",PersistenceRequired:0b,CanPickUpLoot:0b,Health:25f,Tags:["monster","soul_tree_remnant","monster.elekiel.1.mob","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/soul_tree_remnant"}},{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],CustomName:{"bold":true,"color":"gold","fallback":"靈魂樹殘像","italic":false,"translate":"monsters.soul_tree_remnant"},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide"},"minecraft:enchantment_glint_override":false,"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:1,operation:"add_multiplied_base",slot:"feet"}]}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",asset_id:"soul_tree_remnant"},"minecraft:enchantment_glint_override":false,"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:1,operation:"add_multiplied_base",slot:"legs"}]}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"soul_tree_remnant"},"minecraft:enchantment_glint_override":false,"minecraft:enchantments":{"armors:resilient":1},"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"chest"}]}},head:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"head/soul_tree_remnant","minecraft:enchantment_glint_override":false}},mainhand:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"sword/wind_sword/1","minecraft:enchantment_glint_override":false}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:attack_damage",base:8},{id:"minecraft:max_health",base:25},{id:"minecraft:step_height",base:1}]}

scoreboard players operation #temp monster.elekiel.1.terrain = $timer monster.elekiel.1.terrain
scoreboard players set #math monster.elekiel.1.terrain 20
scoreboard players operation #temp monster.elekiel.1.terrain *= #math monster.elekiel.1.terrain

execute \
    positioned 912 60 2018 \
    as @n[sort=arbitrary,tag=monsters.spawn,tag=monster.elekiel.1.mob,distance=..30] \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
scoreboard players operation @s duration = #temp monster.elekiel.1.terrain

tag @e[tag=monsters.spawn] remove monsters.spawn

kill afb22e74-a7d5-4c08-a254-85281e83cd83
scoreboard players reset #math monster.elekiel.1.terrain
scoreboard players reset #temp monster.elekiel.1.terrain

scoreboard players remove #repeat global.main 1

function monsters:chapter_2/elekiel/1/3