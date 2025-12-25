gamemode adventure @s

execute unless score #chapter_test global.main matches -2147483648..2147483647 in world_area:main/game_lobby run tp @s 72 61 -4 180 0

clear @s

team join team.player @a

scoreboard players set @s player.spawnpoint.dimension 3
scoreboard players set @s player.spawnpoint.pos.x 72
scoreboard players set @s player.spawnpoint.pos.y 61
scoreboard players set @s player.spawnpoint.pos.z -4

function music:remove_bgn_icon
function weapons:remove_weapons_icon
function armors:remove_armors_icon
function story:remove_story_icon
function story:remove_proper_noun_icon
function players:adv/remove_adv

dialog show @s players:settings

execute unless score #chapter_test global.main matches -2147483648..2147483647 in world_area:main/game_lobby run advancement revoke @s only players:new_player
execute if score #chapter_test global.main matches -2147483648..2147483647 run function main:chapter_test