# ===================================================
# 天導神弓箭矢 magic circle holy fire 階段 1 / heavenly guiding arrow magic circle holy fire step 1

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/1 ] >>> 天導神弓箭矢 magic circle holy fire 階段 1 / heavenly guiding arrow magic circle holy fire step 1
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/clear ] >>> 天導神弓箭矢 清除 / heavenly guiding arrow clear

# ===================================================


summon marker ~ ~ ~ {Duration:20,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["weapon.heavenly_guiding_arrow.holy_fire.point","summon"]}

scoreboard players add @n[sort=arbitrary,distance=..1,tag=weapon.heavenly_guiding_arrow.holy_fire.point,type=area_effect_cloud] weapon.heavenly_guiding_bow.arrow.time 0

scoreboard players add #index weapon.heavenly_guiding_bow.arrow.id 1
scoreboard players operation @n[sort=arbitrary,distance=..1,tag=weapon.heavenly_guiding_arrow.holy_fire.point,type=area_effect_cloud] weapon.heavenly_guiding_bow.arrow.id = #index weapon.heavenly_guiding_bow.arrow.id
scoreboard players operation @s weapon.heavenly_guiding_bow.arrow.id = #index weapon.heavenly_guiding_bow.arrow.id
