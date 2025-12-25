# Spawners (Detect the Silver Fish location, then execute 'function monsters:summon/<monsters>' and remove the Silver Fish)
execute as @e[distance=..30,limit=10,sort=arbitrary,type=silverfish] at @s run function spawner:main

execute as @n[sort=arbitrary,distance=..20,tag=sys.detect.player_death.point,type=marker] at @s unless block ~ ~ ~ #air run setblock ~ ~ ~ air
execute as @n[sort=arbitrary,distance=..20,tag=sys.detect.player_death.point,type=marker] at @s unless block ~ ~1 ~ #air run setblock ~ ~1 ~ air

execute if dimension minecraft:the_end run scoreboard players set @s player.disable.tp_book 10

# Multiple players glow
execute if score #player.count global.main matches 2.. run effect give @a glowing 1 255 true

# Campfire
execute as @e[distance=..15,sort=nearest,limit=5,tag=sys.campfire,type=interaction] at @s run function sys:campfire/interaction/main

# Chair
function sys:sit_down/interaction/main

# Glitch Effect
function players:effect/glitch_effect/main

# Portal

execute as @e[tag=portal,type=marker,distance=..30,limit=5,sort=nearest] at @s run function sys:portal/loop

execute unless entity @s[gamemode=!survival,gamemode=!adventure] as @n[tag=sys.item_frame,type=glow_item_frame,distance=..8] unless data entity @s Item.id at @s run kill @s[tag=sys.item_frame,type=glow_item_frame]

function armors:loop

function story:tick

function sys:dmg_show/guide

# Equipment
execute as @e[type=!#dummy_mob,type=!player,distance=..15] at @s run function armors:type/black_hole/boots/effect/main

execute at @n[tag=sys.detect.player_death.point,type=marker] run spawnpoint @s ~ ~ ~

execute as @s[tag=player.death] at @s if entity @n[sort=arbitrary,distance=..1,tag=sys.detect.player_death.point,type=marker] run function players:tp_to_spawnpoint/use

# Weapons

function weapons:type/core/player

# Join the Game

function players:detect/leave_game

# Mnument

function weapons:monument/synchronize_data

# Players
function players:main
execute if score @s player.hide matches 1 run function players:hide/false
function players:disable/movement/main
function players:actionbar/main

function #players:detect/click_event_trigger

# trap
function trap:main

# Area
function world_area:main/loop