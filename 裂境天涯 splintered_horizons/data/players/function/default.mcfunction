clear @s

function players:scoreboard

scoreboard players set @s player.no_cd 0

attribute @s minecraft:waypoint_transmit_range base set 0
attribute @s minecraft:waypoint_receive_range base set 0

scoreboard players add @s main.light_sensitivity 0
scoreboard players add @s main.3d_dizziness 0

scoreboard players set #story global.main 0

scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players set @s player.spawnpoint.pos.x 38
scoreboard players set @s player.spawnpoint.pos.y 64
scoreboard players set @s player.spawnpoint.pos.z 11

team join team.player @a

scoreboard players set @a death_count 0

scoreboard players set #bossfight.chapter_2.act.setup global.main 1

advancement revoke @a only weapons:monument/area_1
advancement grant @a only weapons:monument/icon
advancement grant @a only weapons:icon/other
advancement grant @s only story:icon/story/chapter_1
function music:remove_bgn_icon
function weapons:remove_weapons_icon
function story:remove_story_icon
function story:remove_proper_noun_icon

advancement grant @s only world_area:main/environment_particles/true

advancement revoke @s only story:icon/story/chapter_1/scebe_1