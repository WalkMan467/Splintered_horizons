# 強載入生成 BOSS 實體 否則重複循環 / Forceload the area to spawn the boss entity, if failed, repeat the loop
execute \
    positioned 762 107 642 run \
forceload add ~ ~

# ===============================================

scoreboard players set #disable monster.segrina.state 1

execute \
    in minecraft:overworld \
    positioned 762 107 642 run \
summon zombie 762 107 642 {NoAI:1b,Health:300.0f,Silent:1b,Rotation:[0.0f,0.0f],DeathLootTable:"-",PersistenceRequired:1b,Tags:["freeze.immunity","segrina","monster","monsters.segrina"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/segrina"}}],CustomName:{"bold":false,"color":"gold","fallback":"永劫輪迴的墮落者「阿斯尼亞」","italic":false,"translate":"monsters.segrina"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,tooltip_display:{hidden_components:["trim"]},equippable:{slot:"legs",asset_id:"air"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{enchantments:{"armors:resilient":2},enchantment_glint_override:false,unbreakable:{},tooltip_display:{hidden_components:["trim"]},equippable:{slot:"chest",asset_id:"air"}}},head:{id:"minecraft:stone_button",count:1,components:{item_model:"air",equippable:{slot:"head",asset_id:"air"}}},mainhand:{id:"minecraft:wooden_axe",count:1,components:{attribute_modifiers:[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}],item_model:"air"}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

# BOSS 戰場邊界牆
execute \
    in minecraft:overworld run \
summon minecraft:item_display 762.5 107.0 680.99 {UUID:[I;31212312,-312312213,231231,5241321],view_range:2.0f,brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:fx/gravity_disturbance_area/1"}, count: 1, id: "minecraft:poisonous_potato"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 8.5f, 0.0f], translation: [0.0f, 4.25f, 0.0f]}}

execute \
    in minecraft:overworld run \
summon minecraft:item_display 787.5 107.0 603.5 {UUID:[I;2311213,-312312213,231231,5241321],view_range:2.0f,brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:fx/gravity_disturbance_area/1"}, count: 1, id: "minecraft:poisonous_potato"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [10.0f, 10.0f, 0.0f], translation: [0.0f, 4.25f, 0.0f]}, view_range: 2.0f}

# ===============================================

# 判斷生成成功與否 / Check if the boss entity has been successfully spawned
execute \
    unless loaded 762 107 642 run \
    return run \
schedule function bossfight:chapter_2/segrina/summon/2 1t

execute \
    unless entity @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] run \
    return run \
schedule function bossfight:chapter_2/segrina/summon/2 1t

# 生成成功 ;載入初始設置 / Successfully spawned, load the initial setup

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] at @s run \
function bossfight:chapter_2/segrina/summon/3

# 移除強載入 / Remove the forceload

execute \
    positioned 762 107 642 run \
forceload remove ~ ~

# ==============================================