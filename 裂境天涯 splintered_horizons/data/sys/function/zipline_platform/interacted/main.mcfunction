# 補上缺少的塔 id
#
# 鄰接表是拿 id 當鍵的，沒有 id 的塔會讓所有比對同時成立。
# 舊版本放下去的塔就是這種狀況，所以這裡持續補號。
execute \
    at @a \
    as @e[tag=sys.zipline_platform.act,distance=..60,type=interaction] \
    unless score @s sys.zipline_platform.id matches -2147483648..2147483647 run \
function sys:zipline_platform/id/assign

# 補上缺少的連線清單
execute \
    at @a \
    as @e[tag=sys.zipline_platform.as,tag=!sys.zipline_platform.linked,distance=..60,type=armor_stand] at @s run \
function sys:zipline_platform/link/ensure

# 畫線 / Draw links
execute \
    at @a run \
function sys:zipline_platform/link/draw/main

execute \
    at @a run \
function sys:zipline_platform/link/draw/clear

execute \
    as @a[tag=sys.zipline_platform.editing] at @s run \
function sys:zipline_platform/link/draw/origin

execute \
    as @a at @s \
    unless score @s player.actionbar.zipline_platform.useing matches 1.. \
    if entity @e[sort=arbitrary,distance=..5,tag=sys.zipline_platform.act,type=interaction] run \
scoreboard players set @s player.actionbar.zipline_platform 2

# 待接續的玩家（上一 tick 抵達終點時按著 Ctrl）
#
# 隔一 tick 才發，是為了斷開 point/clear/use → interacted/player →
# point/use → ... → point/clear/use 這條同 tick 遞迴。

execute \
    as @a[tag=sys.zipline_platform.chain.pending] at @s run \
function sys:zipline_platform/chain/use

# 左鍵 : 進出連線編輯模式、拆線
execute \
    at @a \
    as @e[sort=arbitrary,distance=..10,tag=sys.zipline_platform.act,type=interaction] at @s \
    if data entity @s attack.timestamp run \
function sys:zipline_platform/link/attack

# 右鍵 : 使用滑索，連線模式中則是建立連線
execute \
    at @a \
    as @e[sort=arbitrary,distance=..10,tag=sys.zipline_platform.act,type=interaction] at @s \
    if data entity @s interaction.timestamp run \
function sys:zipline_platform/interacted/use

schedule function sys:zipline_platform/interacted/main 1t
