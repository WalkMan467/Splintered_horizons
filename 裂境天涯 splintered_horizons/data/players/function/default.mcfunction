give @p wooden_sword[enchantments={levels:{"minecraft:sharpness":2,"minecraft:unbreaking":2}}] 1
give @p wooden_pickaxe[enchantments={levels:{"minecraft:efficiency":2,"minecraft:unbreaking":1}}] 1
give @s apple 12
give @s crafting_table 1

function players:scoreboard

scoreboard players set @s player.infinite.mana 0

scoreboard players add @s main.light_sensitivity 0
scoreboard players add @s main.3d_dizziness 0

scoreboard players enable @a environment_particles
scoreboard players add @a environment_particles 0


execute in minecraft:overworld run spawnpoint @s 38 64 11
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

function #main:scoreboard

advancement grant @s only world_area:main/environment_particles/true

advancement revoke @s only story:icon/story/chapter_1/scebe_1