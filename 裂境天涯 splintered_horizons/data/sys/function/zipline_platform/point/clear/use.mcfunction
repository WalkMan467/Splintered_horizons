
# effect

# 按住 Ctrl（衝刺鍵）就接續下一段滑索
#
# 這裡只掛一個「待接續」的旗標，真正的下一段交給 interacted/main
# 在下一 tick 發動
#
# 不能直接呼叫直接接的話會變成同一 tick 內的遞迴：
#   interacted/player → point/use → loop → guide → effect → point/loop
#   → point/guide → point/tp → point/clear/use → 又回到這裡
# 診斷顯示它一口氣接了 12 段（被保險絲擋下）、留下 12 顆終點 marker，
# 三十幾個音效疊在一起，落點也完全跑掉
#
# players:detect/input/sprint 讀的是客戶端輸入封包裡的原始按鍵狀態，
# 不是 isSprinting 旗標，所以騎乘中也讀得到

scoreboard players set #chain.pending sys.zipline_platform.link 0

execute \
    if entity @n[tag=owner,distance=..0.5,type=marker] \
    if entity @n[tag=sys.zipline_platform.act,distance=..8,type=interaction] \
    as @p \
    if predicate players:detect/input/sprint run \
scoreboard players set #chain.pending sys.zipline_platform.link 1

execute \
    if score #chain.pending sys.zipline_platform.link matches 1 run \
tag @p add sys.zipline_platform.chain.pending

execute \
    if score #chain.pending sys.zipline_platform.link matches 1 run \
tag @p add sys.fall_immunity

execute \
    if score #chain.pending sys.zipline_platform.link matches 1 run \
    return run \
function sys:zipline_platform/chain/cleanup

tag @p add sys.fall_immunity
scoreboard players set @p player.actionbar.zipline_platform.useing 0

execute \
    as @p run \
function sys:zipline_platform/motion/use
execute \
    as @p \
    if predicate players:detect/input/front run \
function sys:zipline_platform/motion/forward/use


scoreboard players set @p player.shift.skill.disable 16
scoreboard players set @p player.disable.elytra_switch 20

kill @s
kill @n[distance=0..,tag=owner,type=marker]