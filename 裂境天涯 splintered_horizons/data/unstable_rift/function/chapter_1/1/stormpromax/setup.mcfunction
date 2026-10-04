# ===================================================
# 亞斯 生成後設定 / stormpromax setup

    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/setup ] >>> 亞斯 生成後設定 / stormpromax setup
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/summon ] >>> 召喚 亞斯 / summon stormpromax
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/main ] >>> 亞斯 排程 / stormpromax scheduler
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/kill ] >>> 亞斯 死亡收尾 / stormpromax on kill

# ===================================================
# 執行者 : 剛被 summon 出來的 zombie
#
# 舊版的血量與攻擊力是丟 #hp / #atk global.main 再走 monsters:-init/use，
# 那支函數在這個資料包不存在，所以直接寫進 attributes
# 屬性 ID 全部去掉 generic. 前綴（1.21.2 之後改名），裝備從 ArmorItems 改成 equipment

function monsters:vehicle_remove

data merge entity @s {PersistenceRequired:1b,Health:400f,IsBaby:0b,CanBreakDoors:0b,CustomName:{"italic":false,"translate":"monsters.stormpromax","fallback":"亞斯 - 來自風暴峽谷的深淵災害"},equipment:{feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:wild"},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_value",slot:"feet"}]}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":4761740,"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_value",slot:"legs"}]}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":5027821,"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_value",slot:"chest"}]}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwMDY1MjUxZmQ4ZWE0OTg2M2Q4ZDdkYThmODRkZGRmNTVmNmI3YjJmM2ZiMzRlZWFlYmJlOWM3YWZlODRjNCJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:max_health",base:400},{id:"minecraft:attack_damage",base:5},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:attack_speed",base:4},{id:"minecraft:gravity",base:0.04},{id:"minecraft:movement_speed",base:0.26},{id:"minecraft:water_movement_efficiency",base:3},{id:"minecraft:scale",base:1.1}]}

# 死亡偵測：marker 騎在身上，data.Death 存前綴，
# monsters:detect_kill/run 會去跑 <前綴>/kill

summon marker ~ ~ ~ {Tags:["monster.marker"],data:{Death:"unstable_rift:chapter_1/1/stormpromax"}}
ride @n[type=marker,tag=monster.marker,distance=..1] mount @s

# 舊版還掛了 normal.zombie.hurt.sound / weakness.wind / weakness.fire / monster.spawn，
# 這四個在這個資料包沒有任何地方讀，所以沒有搬過來
# freeze.immunity 與 sys.silence.immunity 是照現在 BOSS 的慣例加的

tag @s add stormpromax
tag @s add boss
tag @s add monster
tag @s add freeze.immunity
tag @s add sys.silence.immunity

# 技能冷卻走這包的絕對截止時間制：cast.at 存的是「可以放技能的那一 tick」
#
# 不能寫 cast.cd —— monsters:main 每 tick 會用 cast.at - #gametime 把它重算掉，
# 那是給預告與 debug 看的衍生值cast.dur 留著給技能預告算進度，
# cast.tip 要 reset 才會在下一輪重新預告一次

execute \
    store result score @s monster.skill.cast.at run \
random value 100..120
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip

execute \
    store result score @s monster.skill.rdm.skill run \
random value 1..2
