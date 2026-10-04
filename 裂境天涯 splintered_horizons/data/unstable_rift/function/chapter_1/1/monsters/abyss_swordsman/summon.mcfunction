# ===================================================
# 破碎之城 召喚 深淵劍士 / broken city summon abyss swordsman

    ## Guide [ function unstable_rift:chapter_1/1/monsters/abyss_swordsman/summon ] >>> 破碎之城 召喚 深淵劍士 / broken city summon abyss swordsman
    ## Guide [ function unstable_rift:chapter_1/1/monsters/abyss_swordsman/setup ] >>> 深淵劍士 侵蝕加成 / abyss swordsman erosion scaling
    ## Guide [ function unstable_rift:chest/credit/kill ] >>> 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest

# ===================================================

# Passengers 那個 marker 是死亡偵測 Marker（monsters:detect_kill 那一套）：
# 這隻死掉的時候會跑 unstable_rift:chest/credit/kill，把 reward_points
# 加到 8 格內最近那個還沒開過的裂境寶箱上
#
# 新增裂境怪要算進寶箱分數的話，summon 的 NBT 裡照抄同一個 Passengers 就好

summon skeleton ~ ~ ~ {Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"unstable_rift:chest/credit"}}],PersistenceRequired:1b,CanPickUpLoot:0b,AbsorptionAmount:0f,Health:20f,sheared:0b,Tags:["unstable_rift.chapter_1.1.abyss_swordsman","summon"],CustomName:{"bold":true,"color":"red","fallback":"Abyssal Swordsman","translate":"monster.abyss_swordsman"},equipment:{feet:{components:{trim:{material:"minecraft:abyss_material",pattern:"minecraft:abyss_trim"}},count:1,id:"minecraft:leather_boots"},legs:{components:{trim:{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_leggings"},chest:{id:"minecraft:leather_chestplate",count:1,components:{trim:{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"},enchantments:{blast_protection:1},enchantment_glint_override:false}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{texture:"entity/player/wide/abyss_swordsman",model:"wide"}}},mainhand:{components:{attribute_modifiers:[{amount:0.0d,id:"minecraft:attack_damage",slot:"mainhand",type:"minecraft:attack_damage",operation:"add_multiplied_base"}],tooltip_display:{hidden_components:["minecraft:attribute_modifiers"]}},count:1,id:"minecraft:netherite_axe"}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:attack_damage",base:5},{id:"minecraft:waypoint_transmit_range",base:0},{id:"minecraft:armor_toughness",base:0},{id:"minecraft:armor",base:0}]}

execute \
    as @n[sort=arbitrary,distance=..0.1,tag=summon,type=skeleton] at @s run \
function unstable_rift:chapter_1/1/monsters/abyss_swordsman/setup with storage unstable_rift:main args
