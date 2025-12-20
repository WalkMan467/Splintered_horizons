# Spawners (Detect the Silver Fish location, then execute 'function monsters:summon/<monsters>' and remove the Silver Fish)
execute as @e[distance=..30,limit=10,sort=arbitrary,type=silverfish] at @s run function spawner:main

execute as @n[sort=arbitrary,distance=..20,tag=sys.detect.player_death.point,type=marker] at @s unless block ~ ~ ~ #air run setblock ~ ~ ~ air
execute as @n[sort=arbitrary,distance=..20,tag=sys.detect.player_death.point,type=marker] at @s unless block ~ ~1 ~ #air run setblock ~ ~1 ~ air

# Multiple players glow
execute if score #player.count global.main matches 2.. run effect give @a glowing 1 255 true

# Campfire
execute as @e[type=interaction,tag=sys.campfire,distance=..30,limit=5,sort=nearest] at @s run function sys:campfire/interaction/main

# Portal

execute as @e[tag=portal,type=marker,distance=..30,limit=5,sort=nearest] at @s run function sys:portal/loop

execute unless entity @s[gamemode=!survival,gamemode=!adventure] as @n[tag=sys.item_frame,type=glow_item_frame,distance=..8] unless data entity @s Item.id at @s run kill @s[tag=sys.item_frame,type=glow_item_frame]

function armors:loop

function story:tick

# Equipment
execute as @e[type=!#dummy_mob,type=!player,distance=..15] at @s run function armors:type/black_hole/boots/effect/main

execute at @n[tag=sys.detect.player_death.point,type=marker] run spawnpoint @s ~ ~ ~

execute as @s[tag=player.death] at @s if entity @n[sort=arbitrary,distance=..1,tag=sys.detect.player_death.point,type=marker] run function players:tp_to_spawnpoint/use

# Chair
execute as @e[tag=sys.sit_down,type=interaction,distance=..15] at @s run function sys:sit_down/interaction/main


# Weapons

function weapons:type/core/player

# Join the Game

execute as @s[scores={player.leave_game=1..}] run function players:join_game/0

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