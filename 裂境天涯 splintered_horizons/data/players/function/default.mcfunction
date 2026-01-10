clear @s

function players:scoreboard

team modify team.player friendlyFire false
team join team.player @a

scoreboard players set @s player.no_cd 0

scoreboard players set #story global.main 0

scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players set @s player.spawnpoint.pos.x 38
scoreboard players set @s player.spawnpoint.pos.y 64
scoreboard players set @s player.spawnpoint.pos.z 11


execute \
    as @s run \
attribute @s minecraft:waypoint_transmit_range base set 0

execute \
    as @s run \
attribute @s minecraft:waypoint_receive_range base reset

scoreboard players add @s main.light_sensitivity 0
scoreboard players add @s main.3d_dizziness 0

advancement revoke @s only weapons:monument/area_1
advancement grant @s only weapons:monument/icon
advancement grant @s only weapons:icon/other
advancement grant @s only story:icon/story/chapter_1

scoreboard players set @s player.death_count 0
scoreboard players set #bossfight.chapter_2.act.setup global.main 1

function music:remove_bgn_icon
function weapons:remove_weapons_icon
function story:remove_story_icon
function story:remove_proper_noun_icon
function monsters:remove_monsters_icon


team join team.player @s

advancement grant @s only world_area:main/environment_particles/true

advancement revoke @s only story:icon/story/chapter_1/mq/scebe_1