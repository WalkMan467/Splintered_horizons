

execute \
    unless score #chapter_test global.main matches -2147483648..2147483647 run \
return 0

gamemode survival @s

# Chapter 2

execute \
    if score #chapter_test global.main matches ..1 run \
return 0


execute \
    in minecraft:overworld run \
tp @s 757 142 912 0 0

scoreboard players reset WalkMan467 player.death_count
scoreboard players add @a player.death_count 0

scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players set @s player.spawnpoint.pos.x 757
scoreboard players set @s player.spawnpoint.pos.y 142
scoreboard players set @s player.spawnpoint.pos.z 912

scoreboard players set #monument.area_1 global.main 1
scoreboard players set #weapons:monument/area_1 global.main 1

scoreboard players set #monument.area_2 global.main 0
scoreboard players set #weapons:monument/area_2 global.main 0

scoreboard players set #monument.area_3 global.main 0
scoreboard players set #weapons:monument/area_3 global.main 0

scoreboard players set story.chapter_1.sq.1 story.chapter_1 1
scoreboard players set #story:icon/story/chapter_1/sq/1/1 global.main 1
scoreboard players set #story:icon/story/chapter_1/sq/1/2 global.main 1
scoreboard players set #story:icon/story/chapter_1/sq/1/title global.main 1

advancement grant @a only weapons:monument/area_1

advancement grant @s only music:icon

advancement revoke @s only music:main/icon
    
    advancement grant @s only music:main/campfire/icon
    
        advancement grant @s only music:main/campfire/1/title
        advancement grant @s only music:main/campfire/2/title

    advancement revoke @s only music:main/safe_zone/icon
        advancement revoke @s only music:main/safe_zone/title
        
    advancement revoke @s only music:main/tree_of_world_memory/icon
        advancement revoke @s only music:main/tree_of_world_memory/title

advancement grant @s only music:chapter_1/icon

        advancement grant @s only music:chapter_1/broken_city/1/title

advancement grant @s only music:chapter_2/icon

        advancement grant @s only music:chapter_2/land_of_finality/icon
        advancement grant @s only music:chapter_2/land_of_finality/title
        advancement grant @s only music:chapter_2/forest_of_souls/icon
        advancement grant @s only music:chapter_2/forest_of_souls/title
        advancement revoke @s only music:chapter_2/forgotten_sakura_city/icon
        advancement revoke @s only music:chapter_2/forgotten_sakura_city/title
        advancement revoke @s only music:chapter_2/bossfight/2/icon
        advancement revoke @s only music:chapter_2/bossfight/2/title
        advancement revoke @s only music:chapter_2/bossfight/3/title
        advancement revoke @s only music:chapter_2/forgotten_sakura_city/icon
        advancement revoke @s only music:chapter_2/forgotten_sakura_city/title
        advancement revoke @s only music:chapter_2/temple_of_light/icon
        advancement revoke @s only music:chapter_2/temple_of_light/title


advancement revoke @s only music:chapter_3/icon

    advancement revoke @s only music:chapter_3/realm_of_finality/icon
    advancement revoke @s only music:chapter_3/realm_of_finality/title
    advancement revoke @s only music:chapter_3/finalitys_embrace_rift/icon
    advancement revoke @s only music:chapter_3/finalitys_embrace_rift/title
    advancement revoke @s only music:chapter_3/lord_of_the_cataclysm/title

    advancement revoke @s only music:other/icon

        advancement revoke @s only music:other/the_forgooten_lost_city/title
        advancement revoke @s only music:other/the_forgooten_lost_city/icon
    
        advancement revoke @s only music:other/hasanor/title
        advancement revoke @s only music:other/hasanor/icon

clear @s
function weapons:get/sword/wind_sword
function weapons:get/sword/morning_light
function weapons:get/sword/grip_of_withering
function weapons:get/monument/area_1
give @s stone_pickaxe[enchantments={unbreaking:2,efficiency:2}] 1
function weapons:get/drop/hook
clear @s *[custom_data~{type:"drop",weapon:"hook"}] 56
give @s apple 16
function item:get/main/tp_book
give @s bow 1
function armors:get/black_hole
function armors:get/armor_of_the_coiled_rock
function armors:get/swift_boots
function armors:get/windriders_legplates
give @s crafting_table
item replace entity @s weapon.offhand with torch 20


execute \
    if score #chapter_test global.main matches ..2 run \
return 0


execute \
    in minecraft:overworld run \
tp @s 788 109 183 135 0

scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players set @s player.spawnpoint.pos.x 788
scoreboard players set @s player.spawnpoint.pos.y 109
scoreboard players set @s player.spawnpoint.pos.z 183

advancement revoke @s only music:chapter_3/icon

    advancement revoke @s only music:chapter_3/realm_of_finality/icon
    advancement revoke @s only music:chapter_3/realm_of_finality/title
    advancement revoke @s only music:chapter_3/finalitys_embrace_rift/icon
    advancement revoke @s only music:chapter_3/finalitys_embrace_rift/title
    advancement revoke @s only music:chapter_3/lord_of_the_cataclysm/title

advancement grant @s only music:main/safe_zone/icon
    advancement grant @s only music:main/safe_zone/title

advancement grant @s only music:chapter_3/icon

    advancement grant @s only music:chapter_3/realm_of_finality/icon
    advancement grant @s only music:chapter_3/realm_of_finality/title
    advancement grant @s only music:chapter_3/finalitys_embrace_rift/icon
    advancement grant @s only music:chapter_3/finalitys_embrace_rift/title
    advancement grant @s only music:chapter_3/lord_of_the_cataclysm/title


scoreboard players set #safe_area.enter global.main 1

scoreboard players set #monument.area_2 global.main 1
scoreboard players set #weapons:monument/area_2 global.main 1

scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players set @s player.spawnpoint.pos.x 757
scoreboard players set @s player.spawnpoint.pos.y 142
scoreboard players set @s player.spawnpoint.pos.z 912