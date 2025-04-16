give @p wooden_sword[enchantments={levels:{"minecraft:sharpness":2,"minecraft:unbreaking":2}}] 1
give @p wooden_pickaxe[enchantments={levels:{"minecraft:efficiency":2,"minecraft:unbreaking":1}}] 1
give @s apple 12
give @s crafting_table 1

function players:scoreboard

# execute in world_area:main/game_lobby run tp @s 72 61 -4

execute unless score #story global.main matches 1.. run function story:chapter_1/opening/1/0
scoreboard players set #story global.main 1

scoreboard players set @s player.infinite.mana 0
scoreboard players set @s item.tp_book.point.x 0
scoreboard players set @s item.tp_book.point.y 60
scoreboard players set @s item.tp_book.point.z 0
scoreboard players set @s item.tp_book.point.facing.x 0
scoreboard players set @s item.tp_book.point.facing.y 0

execute in minecraft:overworld run spawnpoint @s 39 64 10
execute in minecraft:overworld run tp @s 39 64 10 90 0

team join team.player @a

scoreboard players add @a death_count 0

advancement revoke @a only weapons:monument/area_1
advancement grant @a only weapons:monument/icon
advancement grant @a only weapons:icon/other
advancement grant @s only story:icon/story/chapter_1
function music:remove_bgn_icon
function weapons:remove_weapons_icon
function story:remove_story_icon
function story:remove_proper_noun_icon

advancement revoke @s only story:icon/story/chapter_1/scebe_1