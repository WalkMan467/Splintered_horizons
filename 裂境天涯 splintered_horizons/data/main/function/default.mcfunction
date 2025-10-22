execute in minecraft:overworld run tp @s 9999 131 10071 180 0

setworldspawn 9999 131 10071

function players:setup
advancement revoke @a only players:new_player

clear @s
gamemode survival @a
time set midnight
weather clear
difficulty normal
kill @e[tag=system.monument_point.sword]

xp set @a 0 levels
xp set @a 0 points

scoreboard players set #monument.area_1 global.main 0
scoreboard players set #monument.area_2 global.main 0
scoreboard players set #monument.area_3 global.main 0
scoreboard players set #monument.area_4 global.main 0
scoreboard players set #monument.area_5 global.main 0
scoreboard players set #monument.area_6 global.main 0
scoreboard players set #monument.area_7 global.main 0
scoreboard players set #monument.area_8 global.main 0

scoreboard players reset WalkMan467 player.death_count
scoreboard players add @a player.death_count 0

function world_area:other/otherworld_portal/all_lock

scoreboard players set story.chapter_2.in_safe_zone.ml story.chapter_2 0

scoreboard players set #story:icon/proper_noun/eye_of_finality global.main 0
scoreboard players set #story:icon/proper_noun/new_story global.main 0
scoreboard players set #story:icon/character/sophia/icon global.main 0
scoreboard players set #story:icon/character/sophia/story_1 global.main 0
scoreboard players set #story:icon/story/chapter_1 global.main 0
scoreboard players set #story:icon/character/sophia/story_1_1 global.main 0

scoreboard players set #story:icon/character/selena/icon global.main 0
scoreboard players set #story:icon/character/selena/story_1 global.main 0
scoreboard players set #story:icon/character/selena/story_1_1 global.main 0
scoreboard players set #story:icon/character/selena/story_1_2 global.main 0
scoreboard players set #story:icon/character/selena/story_1_3 global.main 0
scoreboard players set #story:icon/character/selena/story_1_4 global.main 0
scoreboard players set #story:icon/character/selena/story_1_5 global.main 0
scoreboard players set #story:icon/character/selena/story_1_6 global.main 0

scoreboard players set #story:icon/story/chapter_1/scebe_1 global.main 0
scoreboard players set #story:icon/story/chapter_1/scebe_2 global.main 0
scoreboard players set #story:icon/story/chapter_1/scebe_3 global.main 0
scoreboard players set #story:icon/story/chapter_2/scebe_1 global.main 0
scoreboard players set #story:icon/story/chapter_2/scebe_2 global.main 0
scoreboard players set #story:icon/story/chapter_2/scebe_3 global.main 0
scoreboard players set #story:icon/proper_noun/resplendence global.main 0
scoreboard players set #story:icon/proper_noun/shadow global.main 0
scoreboard players set #story:icon/proper_noun/starry_sky_frost global.main 0

scoreboard players set #weapons:monument/area_1 global.main 0
scoreboard players set #weapons:monument/area_2 global.main 0
scoreboard players set #weapons:monument/area_3 global.main 0
scoreboard players set #weapons:monument/area_4 global.main 0
scoreboard players set #weapons:monument/area_5 global.main 0
scoreboard players set #weapons:monument/area_6 global.main 0
scoreboard players set #weapons:monument/area_7 global.main 0
scoreboard players set #weapons:monument/area_8 global.main 0

scoreboard players set #story global.main 1
advancement revoke @a only weapons:monument/area_1
advancement revoke @a only weapons:monument/area_2

reload