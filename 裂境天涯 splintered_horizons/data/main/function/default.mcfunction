
execute \
    in minecraft:overworld run \
tp @s 9999 131 10071 180 0

gamerule send_command_feedback false

datapack disable "file/spawner_tweaker-LATEST-1.21.11"

scoreboard players set #game.start global.main 0
scoreboard players set #game.start.state global.main 0
scoreboard players set #main.map_lobby.act global.main 1

setworldspawn 9999 131 10071

function players:setup
function story:chapter_1/sq/1/reset
function main:map_lobby/reset

function sys:forging_table/crafting/recipe/lock
function sys:monster_wave/reset
function monsters:chapter_2/elekiel_phase_2/reset_skill_tips
function monsters:chapter_2/elekiel/reset_skill_tips
function bossfight:chapter_2/segrina/skills/reset_skill_tips

clear @s
gamemode survival @a
time set midnight
weather clear
difficulty hard
kill @e[distance=0..,tag=sys.monument_point.sword]

scoreboard players reset #story.opening.1.glow global.main

xp set @a 0 levels
xp set @a 0 points

scoreboard players reset WalkMan467 player.death_count

# 已獲得魔劍
scoreboard players set #monument.area_1 global.main 0
scoreboard players set #monument.area_2 global.main 0
scoreboard players set #monument.area_3 global.main 0
scoreboard players set #monument.area_4 global.main 0
scoreboard players set #monument.area_5 global.main 0
scoreboard players set #monument.area_6 global.main 0
scoreboard players set #monument.area_7 global.main 0
scoreboard players set #monument.area_8 global.main 0

# 已歸還到始源神殿魔劍
scoreboard players set #objective_item.1 global.main 0
scoreboard players set #objective_item.2 global.main 0
scoreboard players set #objective_item.3 global.main 0
scoreboard players set #objective_item.4 global.main 0
scoreboard players set #objective_item.5 global.main 0
scoreboard players set #objective_item.6 global.main 0
scoreboard players set #objective_item.7 global.main 0
scoreboard players set #objective_item.8 global.main 0

scoreboard players set #in_safe_zone.ml global.main 0

scoreboard players set #cutscene global.main 0

function world_area:other/otherworld_portal/all_lock

advancement revoke @a only players:new_player

scoreboard players set #sys.shooting_contest.sagittarius global.main 1
scoreboard players set #safe_area.enter global.main 0
scoreboard players set #story.chapter_1.sq.2.enabled global.main 0

scoreboard players set story.chapter_2.in_safe_zone.ml story.chapter_2 0
scoreboard players set #story:icon/proper_noun/great_old_ones global.main 0
scoreboard players set #story:icon/proper_noun/eye_of_finality global.main 0
scoreboard players set #story:icon/proper_noun/runes global.main 0
scoreboard players set #story:icon/proper_noun/new_story global.main 0
scoreboard players set #story:icon/proper_noun/abyss/2 global.main 0
scoreboard players set #story:icon/character/sophia/icon global.main 0
scoreboard players set #story:icon/character/sophia/story_1 global.main 0
scoreboard players set #story:icon/story/chapter_1 global.main 0
scoreboard players set #story:icon/story/chapter_2 global.main 0
scoreboard players set #story:icon/character/sophia/story_1_1 global.main 0

scoreboard players set #story:icon/character/selena/icon global.main 0
scoreboard players set #story:icon/character/selena/story_1 global.main 0
scoreboard players set #story:icon/character/selena/story_1_1 global.main 0
scoreboard players set #story:icon/character/selena/story_1_2 global.main 0
scoreboard players set #story:icon/character/selena/story_1_3 global.main 0
scoreboard players set #story:icon/character/selena/story_1_4 global.main 0
scoreboard players set #story:icon/character/selena/story_1_5 global.main 0
scoreboard players set #story:icon/character/selena/story_1_6 global.main 0

scoreboard players set #story:icon/story/chapter_1/mq/sq/1/1 global.main 0
scoreboard players set #story:icon/story/chapter_1/mq/title global.main 0
scoreboard players set #story:icon/story/chapter_1/mq/scebe_1 global.main 0
scoreboard players set #story:icon/story/chapter_1/mq/scebe_2 global.main 0
scoreboard players set #story:icon/story/chapter_1/mq/scebe_3 global.main 0
scoreboard players set story.chapter_1.sq.1 story.chapter_1 0
scoreboard players set #story:icon/story/chapter_1/sq/1/1 global.main 0
scoreboard players set #story:icon/story/chapter_1/sq/1/2 global.main 0
scoreboard players set #story:icon/story/chapter_1/sq/1/title global.main 0
scoreboard players set #story:icon/story/chapter_1/sq/2/title global.main 0
scoreboard players set #story:icon/story/chapter_1/sq/2/1 global.main 0
scoreboard players set #story:icon/story/chapter_1/sq/2/2 global.main 0

scoreboard players set #story:icon/story/chapter_2/mq/title global.main 0
scoreboard players set #story:icon/story/chapter_2/mq/scebe_1 global.main 0
scoreboard players set #story:icon/story/chapter_2/mq/scebe_2 global.main 0
scoreboard players set #story:icon/story/chapter_2/mq/scebe_3 global.main 0
scoreboard players set #story:icon/proper_noun/resplendence global.main 0
scoreboard players set #story:icon/proper_noun/shadow global.main 0
scoreboard players set #story:icon/proper_noun/starry_sky_frost global.main 0

scoreboard players set #sys.walkman467.glowing global.main 0

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
advancement revoke @s only item:type/tp_book/reset

function sys:monument_point/remove

reload