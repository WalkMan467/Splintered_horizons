execute in minecraft:overworld run tp @s 9999 131 10071 180 0

setworldspawn 9999 131 10071

scoreboard players set abyss_soulcutter monster.boss.spawn 1

function players:setup
advancement revoke @a only players:new_player

clear @s
gamemode survival @a
advancement revoke @a only players:new_player
time set midnight
weather clear
difficulty normal
kill @e[tag=system.monument_point.sword]

scoreboard players set #monument.area_1 global.main 0
scoreboard players set #monument.area_2 global.main 0

scoreboard players set story.chapter_2.in_safe_zone.ml story.chapter_2 0

scoreboard players set #story:icon/proper_noun/eye_of_finality global.main 0
scoreboard players set #story:icon/proper_noun/new_story global.main 0
scoreboard players set #story:icon/character/sophia/icon global.main 0
scoreboard players set #story:icon/character/sophia/story_1 global.main 0
scoreboard players set #story:icon/story/chapter_1 global.main 0
scoreboard players set #story:icon/character/sophia/story_1_1 global.main 0
scoreboard players set #story:icon/story/chapter_1/scebe_1 global.main 0
scoreboard players set #story:icon/story/chapter_1/scebe_2 global.main 0

scoreboard players set #weapons:monument/area_1 global.main 0
scoreboard players set #weapons:monument/area_2 global.main 0

scoreboard players set #story global.main 1
advancement revoke @a only weapons:monument/area_1
advancement revoke @a only weapons:monument/area_2

reload