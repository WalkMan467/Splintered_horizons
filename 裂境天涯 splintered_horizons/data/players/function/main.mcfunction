function players:elytra_switch/main
function players:detect/main
function players:auto_crafting/main
function players:setting/waterfall_effect/main
function players:void_protection/main

tag @s remove player.tombstone_sys.disabled

execute \
    as @e[tag=system.campfire,distance=0..,type=interaction] run \
function players:update

execute \
    if score @s player.give.item.delay matches 1 run \
function players:give_item

# Smooth walking of blocks

execute \
    unless score @s player.setting.smooth_walking matches 1.. run \
attribute @s step_height base reset

execute \
    if score @s player.setting.smooth_walking matches 1.. \
    unless predicate players:detect/input/sneak run \
attribute @s step_height base set 1

execute \
    if score @s player.setting.smooth_walking matches 1.. \
    unless block ~ ~-1 ~ scaffolding run \
attribute @s step_height base set 1

execute \
    if score @s player.setting.smooth_walking matches 1.. \
    if predicate players:detect/input/sneak run \
attribute @s step_height base reset

execute \
    if score @s player.setting.smooth_walking matches 1.. \
    if block ~ ~-1 ~ scaffolding run \
attribute @s step_height base reset


execute \
    if block ~ ~ ~ water \
    unless block ~ ~1 ~ water run \
attribute @s water_movement_efficiency base set 1

execute \
    if block ~ ~ ~ water \
    if block ~ ~1 ~ water run \
attribute @s water_movement_efficiency base reset


# no_cd：直接把截止時間拉到現在，等同於馬上就緒
execute \
    if score @s player.no_cd matches 1.. \
    unless score #gametime global.main >= @s player.ultimate run \
scoreboard players operation @s player.ultimate = #gametime global.main


# 沒有值的玩家初始化成「現在就緒」。絕對時間制下負數沒有意義，
# 不需要再夾成 0。
execute \
    unless score @s player.ultimate matches -2147483648..2147483647 run \
scoreboard players operation @s player.ultimate = #gametime global.main


# 容器不掉落內容物
execute \
    if score @s player.setting.keep_container_items matches 1.. run \
function players:setting/keep_container_items/guide
