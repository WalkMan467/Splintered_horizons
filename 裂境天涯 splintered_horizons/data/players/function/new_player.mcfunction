scoreboard players set @s player.give.item.delay 10

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
advancement grant @s only story:icon/proper_noun/water_magic_sword
advancement revoke @s only weapons:monument/area_1
advancement grant @s only weapons:monument/icon
advancement grant @s only weapons:icon/other
advancement grant @s only story:icon/story/chapter_1
advancement grant @s only world_area:main/environment_particles/true
advancement revoke @s only story:icon/story/chapter_1/scebe_1

attribute @s minecraft:waypoint_receive_range base reset
attribute @s waypoint_transmit_range base set 0

summon marker 38 64 11 {Tags:["system.campfire.the_last_campfire.point","summon"]}
tag @s add system.campfire.the_last_campfire.target
scoreboard players operation @n[tag=system.campfire.the_last_campfire.point,tag=summon] system.campfire.the_last_campfire.point = @p[tag=system.campfire.the_last_campfire.target] player.id
tag @s remove system.campfire.the_last_campfire.target
tag @n[tag=system.campfire.the_last_campfire.point,tag=summon,type=marker] remove summon


scoreboard players add @s story.click_event.trigger 0
scoreboard players enable @s story.click_event.trigger

function #main:scoreboard
function music:remove_bgn_icon
function weapons:remove_weapons_icon
function story:remove_story_icon
function story:remove_proper_noun_icon
function items:type/tp_book/rc/reset

team join team.player @s

scoreboard objectives setdisplay sidebar player.death_count
scoreboard objectives setdisplay list player.death_count

scoreboard players set @s death_count 0
scoreboard players add @s player.death_count 0


function players:id/detect
attribute @s minecraft:movement_speed base set 0.1


execute unless score #story global.main matches 1.. run function story:chapter_1/opening/1/0
scoreboard players set #story global.main 1

spawnpoint @s 38 64 11
setworldspawn 38 64 11