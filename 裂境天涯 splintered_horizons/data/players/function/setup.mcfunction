gamemode adventure @s

execute in world_area:main/game_lobby run tp @s 72 61 -4 180 0

clear @s

function music:remove_bgn_icon
function weapons:remove_weapons_icon
function armors:remove_armors_icon
function story:remove_story_icon
function story:remove_proper_noun_icon
function players:adv/remove_adv

dialog show @s players:settings

advancement revoke @s only players:new_player