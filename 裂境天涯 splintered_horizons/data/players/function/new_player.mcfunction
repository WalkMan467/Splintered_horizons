scoreboard players set @s player.give.item.delay 10

advancement revoke @s only players:tips/bleeding
advancement grant @s only music:icon
advancement grant @s only weapons:icon/icon
advancement grant @s only weapons:icon/old_story
advancement grant @s only weapons:icon/chapter_1
advancement grant @s only weapons:icon/chapter_2
advancement grant @s only story:icon/story/icon
advancement grant @s only story:icon/proper_noun/icon
advancement grant @s only story:icon/proper_noun/old_story
advancement grant @s only story:icon/proper_noun/war_of_light_and_darkness
advancement grant @s only story:icon/proper_noun/final_battle
advancement revoke @s only system:forging_table/tips/main
advancement revoke @s only system:monument_point/tips/main
advancement revoke @s only weapons:monument/area_1
advancement grant @s only weapons:monument/icon
advancement grant @s only weapons:icon/other
advancement grant @s only story:icon/story/chapter_1
advancement grant @s only world_area:main/environment_particles/true
advancement revoke @s only story:icon/story/chapter_1/mq/scebe_1

attribute @s minecraft:waypoint_receive_range base reset
attribute @s waypoint_transmit_range base set 0

scoreboard players add @s story.click_event.trigger 0
scoreboard players enable @s story.click_event.trigger

function #main:scoreboard
function music:remove_bgn_icon
function weapons:remove_weapons_icon
function armors:remove_armors_icon
function story:remove_story_icon
function story:remove_proper_noun_icon
function players:adv/remove_adv
function items:type/tp_book/rc/reset

xp set @s 0 levels
xp set @s 0 points

team join team.player @s

scoreboard objectives setdisplay sidebar player.death_count
scoreboard objectives setdisplay list player.death_count

scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players set @s player.spawnpoint.pos.x 38
scoreboard players set @s player.spawnpoint.pos.y 64
scoreboard players set @s player.spawnpoint.pos.z 11

execute in minecraft:overworld run tp @s 38 64 11 90 0

scoreboard players add @s player.death_count 0


function players:id/detect
attribute @s minecraft:movement_speed base set 0.1