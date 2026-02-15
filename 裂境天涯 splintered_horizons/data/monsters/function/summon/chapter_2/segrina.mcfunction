
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

execute \
    if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1.. run \
return 0


execute \
    if score #boss_area.chapter_2.segrina global.main matches 1.. run \
function monsters:bossfight/chapter_2/act/failure

execute \
    if score #boss_area.chapter_2.segrina global.main matches 1.. run \
return 0

setblock 762 107 642 air replace
setblock 762 108 642 air replace

scoreboard players set #monster.bossfight.chapter_2.segrina.act.enable global.main 0
function monsters:bossfight/chapter_2/act/segrina/1/false

bossbar add monsters.segrina [{"translate":"monsters.segrina","fallback": "「守魂使徒」西格瑞納"}]
bossbar set minecraft:monsters.segrina color red
bossbar set minecraft:monsters.segrina style notched_10

execute \
    positioned 762 107 642 run \
title @a[distance=..60] title [{"translate": "monsters.segrina","fallback":"「守魂使徒」西格瑞納","color": "red"}]

execute \
    positioned 762 107 642 run \
title @a[distance=..60] subtitle [{"text":""}]

execute \
    positioned 762 107 642 run \
title @a[distance=..60] times 20 20 20

execute \
    positioned 762 107 642 \
    as @a[distance=..60] at @s run \
playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 1 1

summon skeleton 762 107 642 {UUID:[I;32123,128,128,5],DeathLootTable:"-",PersistenceRequired:1b,Tags:["freeze.immunity","segrina","monster","monsters.segrina"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/segrina"}}],CustomName:{"bold":false,"color":"gold","fallback":"「守魂使徒」西格瑞納","italic":false,"translate":"monsters.segrina"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{tooltip_display:{hidden_components:["trim"]},equippable:{slot:"legs",asset_id:"air"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{tooltip_display:{hidden_components:["trim"]},equippable:{slot:"chest",asset_id:"air"}}},head:{id:"minecraft:stone_button",count:1,components:{item_model:"air",equippable:{slot:"head",asset_id:"air"}}},mainhand:{id:"minecraft:wooden_axe",count:1,components:{attribute_modifiers:[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}],item_model:"air"}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:500},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

effect give 00007d7b-0000-0080-0000-008000000005 instant_damage 1 27 true

bossbar add monsters.segrina [{"translate":"monsters.segrina","fallback": "「守魂使徒」西格瑞納"}]
bossbar set minecraft:monsters.segrina color red
bossbar set minecraft:monsters.segrina style notched_10

gamemode adventure @a[tag=chapter_2.segrina.lose]
tag @a remove chapter_2.segrina.lose

scoreboard players set skill.1 monster.segrina.cd 100
scoreboard players set skill.2 monster.segrina.cd 300
scoreboard players set @s player.detect.is_bossfight 1
scoreboard players set #boss_area.chapter_2.segrina global.main 1

schedule function monsters:chapter_2/segrina/main 1t


execute \
    in minecraft:overworld run \
summon minecraft:item_display 762.5 107.0 680.99 {UUID:[I;31212312,-312312213,231231,5241321],view_range:2.0f,brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:fx/gravity_disturbance_area/1"}, count: 1, id: "minecraft:poisonous_potato"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 8.5f, 0.0f], translation: [0.0f, 4.25f, 0.0f]}}

execute \
    in minecraft:overworld run \
summon minecraft:item_display 787.5 107.0 603.5 {UUID:[I;2311213,-312312213,231231,5241321],view_range:2.0f,brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:fx/gravity_disturbance_area/1"}, count: 1, id: "minecraft:poisonous_potato"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [10.0f, 10.0f, 0.0f], translation: [0.0f, 4.25f, 0.0f]}, view_range: 2.0f}