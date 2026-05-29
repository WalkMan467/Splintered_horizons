# 強載入生成 BOSS 實體 否則重複循環 / Forceload the area to spawn the boss entity, if failed, repeat the loop
execute \
    positioned -916 60 2750 run \
forceload add ~ ~

# ===============================================

kill 00000806-0000-0002-0000-001f00000003
kill @n[distance=0..,sort=arbitrary,tag=monster.elekiel_phase_2.4.effect.target.player_leave.detect,type=marker]

# 00000100-0000-0080-0000-008000000005

execute \
    in minecraft:overworld \
    positioned -916 60 2750 run \
summon skeleton ~ ~ ~ {DeathLootTable:"-",PersistenceRequired:1b,Tags:["freeze.immunity","sys.no_knockback","elekiel","monster","monsters.elekiel_phase_2"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel_phase_2"}}],CustomName:{"bold":false,"color":"gold","fallback":"「空之支配者」伊萊克爾","italic":false,"translate":"monsters.elekiel"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:tooltip_display":{hidden_components:["trim"]},"minecraft:equippable":{slot:"legs",asset_id:"air"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:tooltip_display":{hidden_components:["trim"]},enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,"minecraft:equippable":{slot:"chest",asset_id:"air"}}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"air","minecraft:equippable":{slot:"head",asset_id:"air"}}},mainhand:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}],"minecraft:item_model":"air"}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:500},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}


# ===============================================

# 判斷生成成功與否 / Check if the boss entity has been successfully spawned
execute \
    unless loaded -916 60 2750 run \
    return run \
schedule function bossfight:chapter_2/elekiel_phase_2/summon/2 1t

execute \
    unless entity @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] run \
    return run \
schedule function bossfight:chapter_2/elekiel_phase_2/summon/2 1t

# 生成成功 ;載入初始設置 / Successfully spawned, load the initial setup

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s run \
function bossfight:chapter_2/elekiel_phase_2/summon/3

# 移除強載入 / Remove the forceload

execute \
    positioned -916 60 2750 run \
forceload remove ~ ~

# ==============================================