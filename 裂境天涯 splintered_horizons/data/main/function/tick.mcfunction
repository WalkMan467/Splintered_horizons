## ----- 全域時間基準 ----- ##
# 絕對時間制 timer 的比較基準。必須是整個 tick 的第一件事，而且每 tick 只更新一次。
# gametime 是世界年齡，只增不減，/time set 不會影響它。

execute \
    store result score #now global.time run \
time query gametime


execute \
    store result score #difficulty global.main run \
difficulty

execute \
    store result score #player.count global.main \
    if entity @a

execute \
    if score #game.start global.main matches 1.. run \
advancement grant @a only players:new_player

execute at 00000079-0000-0018-0000-000200000209 run \
particle end_rod ~ ~0.5 ~ ^ ^-1000000 ^ 0.00000005 0 force @a


execute \
    in minecraft:overworld run \
setworldspawn 9987 165 9978


execute \
    unless score #difficulty global.main matches 1.. \
    if entity @n[sort=arbitrary,tag=monster.marker,distance=0..,type=marker] run \
kill @e[sort=arbitrary,tag=monster.marker,distance=0..,type=marker]

execute \
    unless score #difficulty global.main matches 1.. \
    if entity @n[sort=arbitrary,tag=main.duration.timer,distance=0..,type=marker] run \
kill @e[sort=arbitrary,tag=main.duration.timer,distance=0..,type=marker]


execute \
    unless score #difficulty global.main matches 1.. \
    as @n[sort=arbitrary,tag=monsters.display,distance=0..,type=#dummy_mob] \
    on passengers \
    on passengers run \
kill @s

execute \
    unless score #difficulty global.main matches 1.. \
    as @n[sort=arbitrary,tag=monsters.display,distance=0..,type=#dummy_mob] \
    on passengers run \
kill @s

execute \
    unless score #difficulty global.main matches 1.. run \
kill @n[sort=arbitrary,tag=monsters.display,distance=0..,type=#dummy_mob]

# Monsters
function monsters:guide

# sys
function sys:main

# Duration Detect
function main:duration/detect

# Player Guide

execute \
    as @a at @s run \
function main:guide/player

# Timer
function #main:timer