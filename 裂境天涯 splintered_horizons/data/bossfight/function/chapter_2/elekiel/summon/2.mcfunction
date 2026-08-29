# 強載入生成 BOSS 實體 否則重複循環 / Forceload the area to spawn the boss entity, if failed, repeat the loop
execute \
    positioned 912 60 2018 run \
forceload add ~ ~

# ===============================================

kill 0024ce6d-0003-ae59-0003-40dd00000005
kill 000009ed-0000-007b-0000-000100000001
kill @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton]

summon skeleton 912 60 2018 {DeathLootTable:"-",PersistenceRequired:1b,Tags:["freeze.immunity","sys.no_knockback","elekiel","bossfight.attack_module","monsters.elekiel","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"bossfight:chapter_2/elekiel"}}],CustomName:{"bold":false,"color":"gold","fallback":"「空之支配者」伊萊克爾","italic":false,"translate":"monsters.elekiel"},equipment:{feet:{id:"minecraft:barrier",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,"minecraft:equippable":{slot:"legs",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide",show_in_tooltip:false}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide",show_in_tooltip:false}}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"air"}},mainhand:{id:"minecraft:apple",count:1,components:{item_model:"air"}},offhand:{id:"minecraft:barrier",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

# ===============================================

# 判斷生成成功與否 / Check if the boss entity has been successfully spawned
execute \
    unless loaded 912 60 2018 run \
    return run \
schedule function bossfight:chapter_2/elekiel/summon/2 1t

execute \
    unless entity @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] run \
    return run \
schedule function bossfight:chapter_2/elekiel/summon/2 1t

# 生成成功 ;載入初始設置 / Successfully spawned, load the initial setup

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] at @s run \
function bossfight:chapter_2/elekiel/summon/3

# 移除強載入 / Remove the forceload

execute \
    positioned 912 60 2018 run \
forceload remove ~ ~