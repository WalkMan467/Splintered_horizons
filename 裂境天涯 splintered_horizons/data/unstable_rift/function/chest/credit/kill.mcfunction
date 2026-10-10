# ===================================================
# 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest

    ## Guide [ function unstable_rift:chest/credit/kill ] >>> 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest
    ## Guide [ function unstable_rift:chest/credit/apply ] >>> 裂境 寶箱 加分與連結線 / credit the kill and draw the link
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score
    ## Guide [ function monsters:detect_kill/run ] >>> 死亡偵測 執行 / death detect run

# ===================================================

# 執行者是剛死掉的那隻怪
#
# 由 monsters:detect_kill 那一套叫進來：怪身上掛的死亡偵測 Marker 帶
# data.Death:"unstable_rift:chest/credit"，monsters:detect_kill/run 會把它
# 展開成 function unstable_rift:chest/credit/kill
#
# 要讓新的裂境怪也算進寶箱，就在牠的 summon NBT 裡加同一個 Passengers：
# Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"unstable_rift:chest/credit"}}]
#
# 注意 monsters:guide 在和平模式會整支 return，所以難度 0 不會有任何加分 ——
# 那時候本來也沒有怪


# 沒有強度分就沒得加（reward_points 是各怪 setup 依侵蝕階段擲出來的）

execute \
    unless score @s unstable_rift.monster.reward_points matches 1.. run \
return 0

# 先把強度分搬到固定的假玩家上 —— 下面 as 成 marker 之後就讀不到這隻怪的分數了

scoreboard players operation #unstable_rift.chest.credit global.main = @s unstable_rift.monster.reward_points

# 16 格內最近、而且還沒結算過的寶箱吃這筆分
#
# 半徑比「寶箱認生怪磚」的 8 格大，是刻意的：怪會追著玩家跑，
# 死的地方常常離生怪磚與寶箱很遠，抓太緊會讓打出去的擊殺算不到分
#
# 排除開過的：開過就代表那一輪結算完了，再殺也不該改它的內容。
# 這樣寫 @n 還會自動往下找還沒開的那一個
#
# at 擺在 as 前面：位置留在屍體那邊，chest/credit/apply 的連結線才畫得出來

execute \
    at @s \
    as @n[tag=unstable_rift.chest.point,tag=!unstable_rift.chest.opened,distance=..16,sort=nearest,type=marker] run \
function unstable_rift:chest/credit/apply
