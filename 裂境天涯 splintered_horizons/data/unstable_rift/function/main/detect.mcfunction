# ===================================================
# 裂隙進出偵測 / rift enter-exit detection

    ## Guide [ function unstable_rift:main/detect ] >>> 裂隙進出偵測 / rift enter-exit detection
    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/out ] >>> 離開裂隙 / leave the rift

# ===================================================

# 參數 : path 生態域與進度的路徑 | area 標籤與記分板的區域名
#
# 設定由各區域自己的 config 寫進 storage unstable_rift:main args，
# 這支只負責通用的判定，不知道自己在管哪一區

# 剛被 clear 送出來的人有幾秒寬限期
# 回去的點在生態域邊界內側，沒有這段就會立刻被判定成再次進入

$execute \
    if score @s unstable_rift.$(area).cooldown matches 1.. run \
scoreboard players remove @s unstable_rift.$(area).cooldown 1

$execute \
    if entity @s[tag=temp] \
    unless score @s unstable_rift.$(area).cooldown matches 1.. \
    if biome ~ ~ ~ unstable_rift:$(path) run \
advancement grant @s only unstable_rift:$(path)/in

# 離開判定要先排除「正在裂隙裡的人」
#
# 生態域標的是入口，裂隙內部不在那個生態域裡 —— 少了 unless tag，
# 玩家被傳進去的下一 tick 就會被判定成離開，物品還回去、人也被傳回去，
# 裂隙只存在一個 tick；寬限期一到又進去一次，變成每 5 秒抓進去再丟出來
#
# 進去之後唯一的出口是倒數歸零，那是 main/timer/use 在管的
# 這一行現在只負責一件事：人走出生態域時把 in 重新上膛，
# 這樣下次踏進來才會再觸發一次 rewards

$execute \
    unless entity @s[tag=unstable_rift.$(area)] \
    unless biome ~ ~ ~ unstable_rift:$(path) run \
advancement grant @s only unstable_rift:$(path)/out
