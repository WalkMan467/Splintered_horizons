# ===================================================
# 地獄之火 烈陽之影 跟隨 / pyrosolis shade follow

    ## Guide [ function weapons:type/sword/pyrosolis/summon/follow ] >>> 地獄之火 烈陽之影 跟隨 / pyrosolis shade follow
    ## Guide [ function weapons:type/sword/pyrosolis/main ] >>> 地獄之火 主迴圈 / pyrosolis loop

    ## 執行者 : 玩家，位置 = 玩家腳底
    ## 
    ## 在玩家頭頂放一個固定 UUID 的 marker 當懸浮點，頭朝它靠過去
    ## 不用 @p 是因為多人站在一起時會抓錯人
    ## UUID [I; 125, 7303, 26, 3] = 0000007d-0000-1c87-0000-001a00000003
    ## 
    ## 距離一定要從懸浮點量，不能從玩家腳底量 :
    ## 腳底到懸浮點本身就有 1.5 格，頭飛到懸浮點正上方時離腳底剛好是這個距離，
    ## 用腳底當基準的話條件永遠成立，頭就會一路黏到臉上，寫幾格都一樣
    ## 所以先 positioned 到懸浮點，selector 的 distance 才是真的水平距離
    ## 
    ## item_display 沒有重力也不吃 Motion，直接 tp 推就好
    ## 召喚時給的 teleport_duration 會在客戶端把每 tick 的 tp 補成平滑移動

# ===================================================

summon marker ~ ~1.5 ~ {Tags:["weapon.pyrosolis.summon.point"],UUID:[I; 125, 7303, 26, 3]}

# 標出自己那隻，後面就不用一直比分數

execute \
    as @e[tag=weapon.pyrosolis.summon,type=item_display] \
    if score @s weapon.pyrosolis.summon.id = #owner weapon.pyrosolis.summon.id run \
tag @s add weapon.pyrosolis.summon.mine

# 離太遠就直接拉回懸浮點

execute \
    positioned ~ ~1.5 ~ \
    as @e[tag=weapon.pyrosolis.summon.mine,type=item_display,distance=24..] run \
tp @s ~ ~ ~

# 離懸浮點 2 格以內就讓它待著，不然會一直黏在臉上

execute \
    positioned ~ ~1.5 ~ \
    as @e[tag=weapon.pyrosolis.summon.mine,type=item_display,distance=2..] \
    at @s \
    facing entity 0000007d-0000-1c87-0000-001a00000003 feet run \
tp @s ^ ^ ^0.28

# 頭轉向玩家

execute \
    as @e[tag=weapon.pyrosolis.summon.mine,type=item_display] run \
rotate @s facing entity 0000007d-0000-1c87-0000-001a00000003 feet

# 身上的火

execute \
    as @e[tag=weapon.pyrosolis.summon.mine,type=item_display] \
    at @s run \
particle flame ~ ~ ~ 0.25 0.25 0.25 0.01 2 normal @a

tag @e[tag=weapon.pyrosolis.summon.mine,type=item_display] remove weapon.pyrosolis.summon.mine

kill @e[tag=weapon.pyrosolis.summon.point,type=marker]
