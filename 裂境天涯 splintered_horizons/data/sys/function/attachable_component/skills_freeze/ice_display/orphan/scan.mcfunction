# ===================================================

# orphan scan


    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/scan ] >>> orphan scan

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/death/schedule ] >>> schedule

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/dimension ] >>> dimension


# ===================================================


# 死亡偵測 Marker 只有在「怪還留著屍體可以偵測」時才有用
# 怪被瞬間移除的情況它一點忙都幫不上：
#
#   1. 苦力怕自爆、kill 指令 -> 實體直接消失，Marker 被踢下載具
#   2. monsters:detect_kill/kill_monster 最後會 on passengers 把乘客全殺掉，
#      Marker 也在裡面，它還沒輪到就先死了
#
# 這兩種情況冰塊都不會有人收，所以改成讓冰塊自己每 tick 確認主人還在不在
#
# 排程函數的執行維度固定是主世界，選擇器不跨維度，必須逐個維度跑一次

execute \
    in minecraft:overworld run \
function sys:attachable_component/skills_freeze/ice_display/orphan/dimension

execute \
    in minecraft:the_nether run \
function sys:attachable_component/skills_freeze/ice_display/orphan/dimension

execute \
    in minecraft:the_end run \
function sys:attachable_component/skills_freeze/ice_display/orphan/dimension

execute \
    in world_area:main/game_lobby run \
function sys:attachable_component/skills_freeze/ice_display/orphan/dimension
