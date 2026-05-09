scoreboard players reset @s monster.sunfire_emissary.death.fx
function monsters:chapter_3/sunfire_emissary/death/fx/guide

scoreboard players add @s monster.sunfire_emissary.death.timer 1


execute \
    if score @s monster.sunfire_emissary.death.timer matches 40 run \
summon creeper ~ ~1 ~ {CustomName:{"translate":"monsters.sunfire_emissary.sunfire_actived","color": "yellow","fallback": "I'm the blazing sun, destined to rise"},Silent:1b,Invulnerable:1b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,Fuse:1,ignited:1b,attributes:[{id:"minecraft:gravity",base:0.0},{id:"minecraft:scale",base:0.0}]}

execute \
    if score @s monster.sunfire_emissary.death.timer matches 40 \
    as @a[distance=..5,gamemode=!spectator,gamemode=!creative] at @s \
    unless score @s sys.dummy_mob matches 1.. run \
advancement grant @s only players:icon/status_effects/entropy_erosion

execute \
    if score @s monster.sunfire_emissary.death.timer matches 40 \
    as @a[distance=..5,gamemode=!spectator,gamemode=!creative] at @s \
    unless score @s sys.dummy_mob matches 1.. run \
function cse:status_effects/apply/entropy_erosion/use {duration:305, tick_rate:100, damage: 5}

execute \
    if score @s monster.sunfire_emissary.death.timer matches 41.. run \
function monsters:chapter_3/sunfire_emissary/death/explosion/use