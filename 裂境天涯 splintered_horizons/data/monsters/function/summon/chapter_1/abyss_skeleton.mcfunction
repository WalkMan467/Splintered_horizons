# ===================================================
# 召喚 深淵骷髏 / summon abyss skeleton

    ## Guide [ function monsters:summon/chapter_1/abyss_skeleton ] >>> 召喚 深淵骷髏 / summon abyss skeleton
    ## Guide [ function unstable_rift:spawner/type/chapter_1/abyss_skeleton/summon ] >>> 裂境 生怪磚 召喚 深淵骷髏 / unstable rift spawner summon abyss skeleton
    ## Guide [ function monsters:chapter_1/abyss_skeleton/death ] >>> 深淵骷髏 死亡 給予急迫 / abyss skeleton death haste

# ===================================================

# monster.abyss_skeleton 這個 tag 是 monsters:chapter_1/abyss_skeleton/death 進度的觸發條件，不能拿掉
# 沒有掛死亡偵測 Marker：深淵骷髏沒有 BOSS 重置要跑，擊殺獎勵走 advancement


execute \
    unless score #difficulty global.main matches 1.. run \
return 0


summon skeleton ~ ~ ~ {DeathLootTable:"-",CustomNameVisible:1b,PersistenceRequired:1b,AbsorptionAmount:0f,Health:30f,Tags:["monster","monster.abyss_skeleton","monsters.chapter_1"],CustomName:{"bold":true,"color":"dark_purple","italic":false,"translate":"monster.abyss_skeleton"},equipment:{feet:{components:{"minecraft:trim":{material:"minecraft:abyss_material",pattern:"minecraft:abyss_trim"}},count:1,id:"minecraft:leather_boots"},legs:{components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_leggings"},chest:{components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_chestplate"},head:{components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcxMTM0NDA3Mzg3MSwKICAicHJvZmlsZUlkIiA6ICJjMTJkMmY5ZWJhZGI0ZTllYTIxZmM2M2M3YWY3M2E5NSIsCiAgInByb2ZpbGVOYW1lIiA6ICJEcmVhbXlOZW9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzk0YjlmYzY4ZTJlZTA3N2U5Nzk4NzNhNTUyNjg5ZmM0Y2RjMmUyNGNhZTQ1MTc5ZWI1NWVkNzJkOWY1ZmFhODciCiAgICB9CiAgfQp9"}]}},count:1,id:"minecraft:player_head"},mainhand:{components:{"minecraft:attribute_modifiers":[{amount:0.0d,id:"minecraft:attack_damage",slot:"mainhand",type:"minecraft:attack_damage",operation:"add_multiplied_base"}],"minecraft:tooltip_display":{hidden_components:["minecraft:attribute_modifiers"]},"minecraft:enchantments":{"monsters:chapter_1/abyss_skeleton/weapon":1},"minecraft:enchantment_glint_override":false},count:1,id:"minecraft:wooden_sword"}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:armor",base:0},{id:"minecraft:armor_toughness",base:0},{id:"minecraft:attack_damage",base:7},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:waypoint_transmit_range",base:0}]}

playsound minecraft:entity.skeleton.ambient voice @a ~ ~1 ~ 1 0.6
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 0.75

particle minecraft:squid_ink ~ ~1 ~ 0.25 0.5 0.25 0.5 40 force @a
