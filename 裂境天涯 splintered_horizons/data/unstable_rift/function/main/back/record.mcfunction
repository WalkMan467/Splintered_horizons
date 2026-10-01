# ===================================================
# 紀錄進入前的座標 / record the position before entering

    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:main/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:main/back/get_pos ] >>> 取出紀錄的座標 / read the recorded position
    ## Guide [ function unstable_rift:main/back/use.guide ] >>> 傳送巨集 / teleport macro
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 執行者 : 玩家

# 做法照 players:void_protection/rollback/update.guide 那套：
# 讀玩家 NBT 很貴，改成在腳下召喚一個固定 UUID 的 marker，
# 讀 marker 的 Pos 再把它殺掉。
#
# UUID 跟虛空保護那支（0360377c-...）不同，不會互相搶。

# 7a1f3d20-9c44-4e6b-8f15-2d6e0b7c9a83
summon marker ~ ~ ~ {UUID:[I;2048867616,-1673245077,-1894437522,192715395]}

# 座標乘 100 存成整數，小數點後兩位足夠回到原地。
# 記分板只能放整數，不乘就會掉小數、玩家會被塞進方塊裡。

execute \
    store result score @s unstable_rift.player.pos.x run \
data get entity 7a1f3d20-9c44-4e6b-8f15-2d6e0b7c9a83 Pos[0] 100

execute \
    store result score @s unstable_rift.player.pos.y run \
data get entity 7a1f3d20-9c44-4e6b-8f15-2d6e0b7c9a83 Pos[1] 100

execute \
    store result score @s unstable_rift.player.pos.z run \
data get entity 7a1f3d20-9c44-4e6b-8f15-2d6e0b7c9a83 Pos[2] 100

# 維度也要記 —— positioned 只換座標不換維度，
# 回程少了它人會留在裂隙那個維度裡。

# 0 = minecraft:overworld（預設，下面沒命中就是它）
scoreboard players set @s unstable_rift.player.pos.dim 0

# 1 = minecraft:the_nether
execute \
    if dimension minecraft:the_nether run \
scoreboard players set @s unstable_rift.player.pos.dim 1

# 2 = minecraft:the_end
execute \
    if dimension minecraft:the_end run \
scoreboard players set @s unstable_rift.player.pos.dim 2

# 3 = world_area:main/game_lobby
execute \
    if dimension world_area:main/game_lobby run \
scoreboard players set @s unstable_rift.player.pos.dim 3

kill 7a1f3d20-9c44-4e6b-8f15-2d6e0b7c9a83
